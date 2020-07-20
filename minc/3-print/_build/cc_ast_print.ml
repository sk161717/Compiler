open Cc_ast
;;

let sp = Printf.sprintf
;;

let mapcat delimiter f l =
  String.concat delimiter (List.map f l)
;;

exception Not_implemented of string
;;

let string_of_bin_op (program : bin_op) =
    match program with
      BIN_OP_EQ    ->  sp "="
    | BIN_OP_EQEQ  ->  sp "=="
    | BIN_OP_NEQ   ->  sp "!="
    | BIN_OP_LT    ->  sp "<"
    | BIN_OP_GT    ->  sp ">"
    | BIN_OP_LEQ   ->  sp "<="
    | BIN_OP_GEQ   ->  sp ">="
    | BIN_OP_PLUS  ->  sp "+"
    | BIN_OP_MINUS ->  sp "-"
    | BIN_OP_MUL   ->  sp "*"
    | BIN_OP_DIV   ->  sp "/"
    | BIN_OP_MOD   ->  Char.escaped (Char.chr 37)
;;

let string_of_un_op (program : un_op) =
    match program with
      UN_OP_PLUS  -> sp "+"
    | UN_OP_MINUS -> sp "-"
    | UN_OP_BANG  -> sp "!"
;;

let string_of_type_expr(program : type_expr) =
    match program with
     TYPE_LONG -> sp "long"
;;

let rec string_of_expr (program : expr) =
    match program with
     EXPR_NUM(arg_int)->string_of_int arg_int
    |EXPR_VAR(arg_str)->arg_str
    |EXPR_BIN_OP(arg_opr,arg_a,arg_b)->
        (string_of_expr arg_a)^" "^(string_of_bin_op arg_opr)^" "^(string_of_expr arg_b) 
    |EXPR_UN_OP(arg_opr,arg_a)->(string_of_un_op arg_opr)^" "^(string_of_expr arg_a)
    |EXPR_CALL(func_name,args)->func_name^"("^(mapcat "," string_of_expr args)^")"
;;

let string_of_dec (type_expr,name) =
    (string_of_type_expr type_expr)^" "^name
;;

let rec string_of_stmt (program : stmt) =
    match program with
      STMT_EMPTY                             -> sp ";"
    | STMT_CONTINUE                          -> sp "continue;"
    | STMT_BREAK                             -> sp "break;"
    | STMT_RETURN(expr)                      -> "return "^(string_of_expr expr)^";"
    | STMT_EXPR(expr)                        -> "    "^(string_of_expr expr)^";"
    | STMT_COMPOUND(dec_list,stmt_list)      -> (mapcat ";\n    " string_of_dec dec_list)^(mapcat "\n    " string_of_stmt stmt_list)
    | STMT_IF(expr,stmt_true,stmt_false)     ->
        if stmt_false==STMT_EMPTY then
            "if ("^(string_of_expr expr)^") "^(string_of_stmt stmt_true)
        else 
            "if ("^(string_of_expr expr)^") "^(string_of_stmt stmt_true)^" else "^(string_of_stmt stmt_false)             
    | STMT_WHILE(expr,stmt)                  -> "while ("^(string_of_expr expr)^") {\n    "^(string_of_stmt stmt)^"\n    }"    
;;

let rec string_of_definition (program : definition) =
    match program with
    FUN_DEF(return_type_expr , name_string , arg_list , stmt)->
        (string_of_type_expr return_type_expr)^" "^name_string^"("^(mapcat ", " string_of_dec arg_list)^") {\n    "^(string_of_stmt stmt)^"\n}"      
;;

(* これを実装するのが役目 *)
let rec string_of_program (program : definition list) =   (*definition..type(cc_ast.ml内で定義されている) definition listという一つの
型の引数programを受け取る*)
  match program with 
      []->""
  | h::r->
      (string_of_definition h)^(string_of_program r)
;;






