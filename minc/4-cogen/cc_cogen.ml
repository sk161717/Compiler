(* 中間言語 (IR) *)
open Cc_ast

let sp = Printf.sprintf
;;

let map_cati delim f l =
  String.concat delim (List.mapi f l)
;;

let increment r =(*ジャンプする先を一意な数字にするのに使う。ifとwhileで使用。*)
   let x = !r in
   let _ = r := x + 1 in
   x
;; 

let r = ref 0

let length = ref 0(*returnでepilogueを生成する際に関数の引数の長さが分からないとスタックの縮小ができないから*)

let arg_length len =
    let _ = length := len in
    length
;;

let return_flag=ref 0(*関数に入った時点では0 stmtのreturnで抜けていたらflagを1にしてdefinition側でのエピローグを破棄*)

let control_flag status= 
    let x = !return_flag in
    let _ = return_flag := status in
    x
;;

let un_op op op0 =(* jne	.L16　etc..*)
    "\t"^op^"\t"^op0^"\n"
;;

let bin_op op op0 op1 =(*movq	%rax, %rdi etc..*)
    "\t"^op^"\t"^op0^", "^op1^"\n"
;;

let registers=["%rdi";"%rsi";"%rdx";"%rcx";"%r8";"%r9"](*引数が格納されるレジスタ*)
;;

let stack_expansion length =    (*とりあえず大量にrspを確保しておく。対応できないテストケースが来たら死ぬ*)
    if length<= 6 then
        length*8+200
    else
        (length-6)*8+length*8+200
;;

let offset length =
    (stack_expansion length)+8
;;

let gen_prologue length = (*スタックの延長。引数の長さ分+（たくさん）を拡張*)
    let stack_area = "$"^(string_of_int (stack_expansion length)) in
    (bin_op "subq" stack_area "%rsp")^(un_op ".cfi_def_cfa_offset" (string_of_int (offset length)))
;;

let gen_epilogue length = (*スタックを元に戻す*)
    let stack_area = "$"^(string_of_int (stack_expansion length)) in
    (bin_op "addq" stack_area "%rsp")^(un_op ".cfi_def_cfa_offset " "8")
;;

let rec cogen_args arg_vars index =(*XX(%rsp)の内容ををrdiなどに移す関数.registersをオーバーした分はvの値に従ってrspに格納される*)
    match arg_vars with
     []->""
    | h::r->
        if index<6 then
            (bin_op "movq" h (List.nth registers index))^(cogen_args r (index+1))
        else
            let header = (index - 6) * 8 in
            let m = (string_of_int header)^"(%rsp)" in
            (bin_op "movq" h "%rax")^(bin_op "movq" "%rax" m)^(cogen_args r (index+1))
;;

(*env=List, assocで変数名と格納場所を辞書化*)

let env_lookup x env=(*変数名x(str)から格納場所(int)を検索*)
    List.assoc x env 
;;

let env_add x loc env=(*(変数名x(str),格納場所loc(int))が追加されたenvを返す*)
    (x,loc)::env
;;

(*prologueの文章とv,envを返却*)
let rec args_to_rsp arg_list index length = (*rXX(rdi etc..)の引数用レジスタに入っている値をrsp系列に移す. 上書きしないようにするためにargの長さをlengthに格納*)
    match arg_list with
     []->("",[])      (*引数が利用しているスタックポインタの次の番号から利用できる*)
    | h::r->
        if length<=6 then         (*引数の数が6個以下なら0(%rsp)から始めていい*)
            let header = index*8 in
            let m = (string_of_int header)^"(%rsp)" in
            let insns, env = args_to_rsp r (index+1) length in
            let _,name = h in
            let env_ = env_add name header env in
            ((bin_op "movq" (List.nth registers index) m)^insns, env_)
        else          (*引数7個以上の時はindex(0から数える)個目の引数を(length-6+index)*8(%rsp)に格納する.スタックで領域がかぶるのを防ぐため*)        
            let insns,env = args_to_rsp r (index+1) length in
            let _,name = h in
            if index<6 then
                let header = (length-6+index)*8 in
                let m = (string_of_int header)^"(%rsp)" in
                let env_ = env_add name header env in
                ((bin_op "movq" (List.nth registers index) m)^insns,env_)
            else
                let header = (offset length)+(index-6)*8 in         (*8(%rsp)の引数は移さない。そのまま使う*)
                let env_ = env_add name header env in    (*7番目の引数以降の引数はListに登録して終わり*)
                (insns,env_)
;;


let rec env_extend decls env v =(*decls..(type_expr * string) list, v..空き領域先頭(int)*)
    match decls with
        []->(env, v)
    | h::r->
        let (type_expr,name) = h in
        let env_ = env_add name v env in
        env_extend r env_ (v+8)
;;


let rec cogen_of_expr (program : expr) env v =  (*返り値のレジスタは%raxになるように全てで統一*)
    match program with
     EXPR_NUM(arg_int)->
     let m = "%rax" in
     let num = "$"^(string_of_int arg_int) in
     let insns = bin_op "movq" num m in        (*領域をスタックポインタで確保して投げる*)
     (insns,m)
    |EXPR_VAR(arg_str)->
        let loc = env_lookup arg_str env in               (*locはint*)
        let m = (string_of_int loc)^"(%rsp)" in
        let insns = bin_op "movq" m "%rax" in           (*%rspにあるデータをListから持ってきてraxへ格納*)
        (insns,"%rax")
    |EXPR_BIN_OP(arg_opr,arg_a,arg_b)->(*比較operetionの条件を満たす場合、raxに1を格納してstmtで分岐*)
            (match arg_opr with          (*以下の比較6演算子について、%raxをtestqしてもうまくいかないので%raxを%rdiに移す*)
              BIN_OP_EQEQ  ->
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "sete" "%al"),"%rax")
            | BIN_OP_NEQ   ->
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "setne" "%al"),"%rax")
            | BIN_OP_LT    ->
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "setl" "%al"),"%rax")
            | BIN_OP_GT    ->  
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "setg" "%al"),"%rax")
            | BIN_OP_LEQ   ->
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "setle" "%al"),"%rax")
            | BIN_OP_GEQ   ->  
                  let insns1,op1 = cogen_of_expr arg_b env v in
                  let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                  let m1 = (string_of_int v)^"(%rsp)" in
                  (insns1^(bin_op "movq" op1 m1)^insns0^(bin_op "movq" op0 "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "cmpq" m1 "%rdi")^(un_op "setge" "%al"),"%rax")
            | BIN_OP_PLUS  ->                                 (*exprの入っているレジスタは%raxが保証されているのでop0はスタックに移さない*)
                let insns1,op1 = cogen_of_expr arg_b env v in
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                let m = (string_of_int v)^"(%rsp)" in
                (insns1^(bin_op "movq" op1 m)^insns0^(bin_op "addq" m op0),op0)
            | BIN_OP_MINUS ->  
                let insns1,op1 = cogen_of_expr arg_b env v in
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                let m = (string_of_int v)^"(%rsp)" in
                (insns1^(bin_op "movq" op1 m)^insns0^(bin_op "subq" m op0),op0)
            | BIN_OP_MUL   ->  
                let insns1,op1 = cogen_of_expr arg_b env v in
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                let m = (string_of_int v)^"(%rsp)" in
                (insns1^(bin_op "movq" op1 m)^insns0^(bin_op "imulq" m op0),op0)
            | BIN_OP_DIV   ->  
                let insns1,op1 = cogen_of_expr arg_b env v in
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                let m = (string_of_int v)^"(%rsp)" in
                (insns1^(bin_op "movq" op1 m)^insns0^"\tcqto\n"^(un_op "idivq" m),"%rax")
            | BIN_OP_MOD   ->
                let insns1,op1 = cogen_of_expr arg_b env v in
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in
                let m = (string_of_int v)^"(%rsp)" in
                (insns1^(bin_op "movq" op1 m)^insns0^"\tcqto\n"^(un_op "idivq" m)^(bin_op "movq" "%rdx" "%rax"),"%rax")
            | BIN_OP_EQ    ->(*x=y*)
                let insns1,op1 = cogen_of_expr arg_b env v in      (*y*)
                let insns0,op0 = cogen_of_expr arg_a env (v+8) in  (*x もしxがスタック未確保の場合ここで確保する*)
                let m = (string_of_int v)^"(%rsp)" in              (*yの格納場所*)
                (match arg_a with
                EXPR_VAR(arg_str)  ->                  (*op0が%raxなので困るが代入式のxは常に文字単体なのでマッチングを行って変数名を取得*)
                    let x_stack = env_lookup arg_str env in              (*xの格納場所*)
                    let x_rsp = (string_of_int x_stack)^"(%rsp)" in
                    (insns1^(bin_op "movq" op1 m)^insns0^(bin_op "movq" m op0)^(bin_op "movq" "%rax" x_rsp),"%rax")
                )
            )
    |EXPR_UN_OP(arg_opr,arg_a)->
        (match arg_opr with
              UN_OP_PLUS  -> 
                let insns, op0 = cogen_of_expr arg_a env v in
                (insns,op0)
            | UN_OP_MINUS -> 
                let insns, op0 = cogen_of_expr arg_a env v in
                let m = (string_of_int v)^"(%rsp)" in
                (insns^(bin_op "movq" "$0" m)^(bin_op "subq" op0 m)^(bin_op "movq" m "%rax"),"%rax")
            | UN_OP_BANG  ->
                let insns, op0 = cogen_of_expr arg_a env v in 
                (insns^(bin_op "movq" "%rax" "%rdi")^(bin_op "xorl" "%eax" "%eax")^(bin_op "testq" "%rdi" "%rdi")^(un_op "sete" "%al"),"%rax")(*%raxをtestqしてもうまくいかないので%raxを%rdiに移す*)
        )
    |EXPR_CALL(func_name,args)->
        let insns0,arg_vars = cogen_of_exprs args env v in(*arg_varsに引数がそれぞれどこのスタックポインタに格納されているのかを記録*)
        let insns1 = cogen_args arg_vars 0 in(*cogen_argsはarg_varsに記されているスタックの中身をrdiなどに移していく再帰関数*)   
        (insns0^insns1^(un_op "call" (func_name^"@PLT")),"%rax")(*関数の返り値は%rax保存*)
and cogen_of_exprs exprs env v =
(*引数(expr)をスタック領域に一旦確保.再帰処理においてv+8とすることでスタックポインタが重複してしまわないようにする*)
    match exprs with         
     []->("",[])
    | h::r ->
        let insns0, op0 = cogen_of_expr h env v in
        let insns1, arg_vars = cogen_of_exprs r env (v+8) in
        let m = (string_of_int v)^"(%rsp)" in
        (insns0^(bin_op "movq" op0 m)^insns1,[m;]@arg_vars)        
;;


let rec cogen_of_stmt (program : stmt) env v =    
    match program with
      STMT_EMPTY                             -> ""
    | STMT_RETURN(expr)                      -> 
        let insns,op0 = cogen_of_expr expr env v in    (*op0はexprの結果が格納されているレジスタ(str)*)
        let epilogue = gen_epilogue !length in         (*ifで分岐してreturnが複数あるパターンがあるのでエピローグはここで書く.*)
        let _ = control_flag 1 in
        insns^epilogue^"\tret\n"      (*関数の返り値はraxに保存される*)
    | STMT_EXPR(expr)                        -> 
        let insns,_ = cogen_of_expr expr env v in
        insns
    | STMT_COMPOUND(decls,stmts)      -> 
        let env_,v_ = env_extend decls env v in (*宣言しただけで代入がないものはアセンブリ上で扱う必要がない。代入はSTMT_EXPRに任せる*)
        cogen_of_stmts stmts env_ v_
    | STMT_IF(expr,stmt_true,stmt_false)     ->(*raxをeflagへ。eflag>0でtrue分岐.jump->Falseのstmt->.LX->Trueのstmt*)
        let insns,op0 = cogen_of_expr expr env v in
        let jump_address = increment r in
        let join_address = increment r in
        let jump_asm = ".L"^(string_of_int jump_address) in     (*条件に合致して飛ぶアドレス*)
        let join_asm = ".L"^(string_of_int join_address) in     (*分岐が終わって合流するところのアドレス*)
        insns^(bin_op "movq" "%rax" "%rdi")^(bin_op "testq" "%rdi" "%rdi")^(un_op "jne" jump_asm)^(cogen_of_stmt stmt_false env v)^(un_op "jmp" join_asm)^jump_asm^":"^"\n"^(cogen_of_stmt stmt_true env v)^join_asm^":"^"\n"    
        
       (*%raxをtestqしてもうまくいかないので%raxを%rdiに移す->exprを評価->ジャンプするならする->false stmt->合流へjump->true stmt->合流地点*)
       
    | STMT_WHILE(expr,stmt)                  -> 
        let cond_insns,cond_op = cogen_of_expr expr env v in   (*goto文として解釈したもの*)
        let body_insns = cogen_of_stmt stmt env v in
        let body_address = increment r in
        let cond_address = increment r in
        let body_asm = ".L"^(string_of_int body_address) in
        let cond_asm = ".L"^(string_of_int cond_address) in
        (un_op "jmp" cond_asm)^body_asm^":"^"\n"^body_insns^cond_asm^":"^"\n"^cond_insns^(bin_op "cmpq" "$0" cond_op)^(un_op "jne" body_asm)
and cogen_of_stmts stmts env v =    (*compoundの複数stmtを切り離す*)
    match stmts with
     []->""
    | h::r ->
        (cogen_of_stmt h env v)^(cogen_of_stmts r env v)    
;;



let rec cogen_of_definition(program : definition) =(* gen prologueで引数を読み込んでスタックを拡張する。そしてenvを作る*)
    match program with
    FUN_DEF(return_type_expr , name_string , arg_list , stmt)->
        let length = List.length arg_list in
        let insns,env = args_to_rsp arg_list 0 length in (*引数をスタックポインタに移す*)
        let prologue = gen_prologue length in
        let epilogue = gen_epilogue length in
        let _ = arg_length length in
        let _ = control_flag 0 in                        
        let stmt_asm = (cogen_of_stmt stmt env (length*8+48)) in (*関数を呼び出す際に引数をXX(%rsp)に格納するが、この時に既に使用されている領域に上書きされるのをを防ぐために+48している。48というのは、テストケースの引数が最大12個で、スタックポインタに入るのはその内6個なので,8*6=48.length*8は、引数を0(%rsp),8(%rsp)..と確保していくため。*)
        if (!return_flag)==0 then
            prologue^insns^stmt_asm^epilogue^"\tret\n"(*関数の中でreturnされない場合はここでエピローグを追加。*)
        else
            prologue^insns^stmt_asm
;;

let rec cogen_of_definition_wrapper i (program : definition) =
    match program with
    FUN_DEF(return_type_expr , name_string , arg_list , stmt)->
        "\t.globl\t"^name_string^"\n\t.type\t"^name_string^", @function\n"^name_string^":\n.LFB"^(sp "%d" i)^":\n\t.cfi_startproc\n"^(cogen_of_definition program)^"\t.cfi_endproc\n.LFE"^(sp "%d" i)^":\n\t.size\t"^name_string^", .-"^name_string
;;

(* これを実装するのが役目 *)
let rec cogen_program program src_name =      
    (sp "\t.file\t\"%s\"\n\t.text\n" src_name)^(map_cati "\n" cogen_of_definition_wrapper program)^(sp "\n.ident\t\"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0\"\n\t.section	.note.GNU-stack,\"\",@progbits")
;;






