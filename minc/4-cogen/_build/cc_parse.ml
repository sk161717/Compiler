
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | SEMICOLON
    | RPAREN
    | RETURN
    | RBRACE
    | PLUS
    | NUM of (
# 2 "cc_parse.mly"
       (int)
# 17 "cc_parse.ml"
  )
    | NEQ
    | MOD
    | MINUS
    | LT
    | LPAREN
    | LONG
    | LEQ
    | LBRACE
    | IF
    | ID of (
# 3 "cc_parse.mly"
       (string)
# 31 "cc_parse.ml"
  )
    | GT
    | GEQ
    | EQEQ
    | EQ
    | EOF
    | ELSE
    | DIV
    | CONTINUE
    | COMMA
    | BREAK
    | BANG
    | ASTERISK
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState100
  | MenhirState94
  | MenhirState91
  | MenhirState90
  | MenhirState85
  | MenhirState81
  | MenhirState78
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState66
  | MenhirState65
  | MenhirState63
  | MenhirState62
  | MenhirState61
  | MenhirState60
  | MenhirState58
  | MenhirState54
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState17
  | MenhirState15
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState4
  | MenhirState0

# 28 "cc_parse.mly"
  

# 119 "cc_parse.ml"

let rec _menhir_goto_list_comma_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Cc_ast.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))) = _menhir_stack in
        let _v : (Cc_ast.expr list) = 
# 103 "cc_parse.mly"
                                   ( _1::_2 )
# 132 "cc_parse.ml"
         in
        _menhir_goto_arg_list _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Cc_ast.expr list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Cc_ast.expr))) = _menhir_stack in
        let _v : (Cc_ast.expr list) = 
# 201 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 143 "cc_parse.ml"
         in
        _menhir_goto_list_comma_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Cc_ast.expr list) = 
# 199 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 154 "cc_parse.ml"
     in
    _menhir_goto_list_comma_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Cc_ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_if_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Cc_ast.stmt)) = _v in
    let _v : (Cc_ast.stmt) = 
# 64 "cc_parse.mly"
                                   ( _1 )
# 465 "cc_parse.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.stmt list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Cc_ast.stmt))), _, (xs : (Cc_ast.stmt list))) = _menhir_stack in
        let _v : (Cc_ast.stmt list) = 
# 201 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 480 "cc_parse.ml"
         in
        _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : ((Cc_ast.type_expr * string) list))), _, (_3 : (Cc_ast.stmt list))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (Cc_ast.stmt) = 
# 68 "cc_parse.mly"
                                   ( Cc_ast.STMT_COMPOUND(_2, _3) )
# 498 "cc_parse.ml"
             in
            (match _menhir_s with
            | MenhirState15 | MenhirState85 | MenhirState63 | MenhirState71 | MenhirState78 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Cc_ast.stmt)) = _v in
                let _v : (Cc_ast.stmt) = 
# 62 "cc_parse.mly"
                                   ( _1 )
# 508 "cc_parse.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
            | MenhirState8 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_6 : (Cc_ast.stmt)) = _v in
                let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.type_expr))), (_2 : (
# 3 "cc_parse.mly"
       (string)
# 518 "cc_parse.ml"
                ))), _, (_4 : ((Cc_ast.type_expr * string) list))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _v : (Cc_ast.definition) = 
# 42 "cc_parse.mly"
                                                           ( Cc_ast.FUN_DEF(_1, _2, _4, _6) )
# 525 "cc_parse.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Cc_ast.definition)) = _v in
                let _v : (Cc_ast.definition) = 
# 39 "cc_parse.mly"
                                   ( _1 )
# 533 "cc_parse.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LONG ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | EOF ->
                    _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState100
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
        let _1 = () in
        let _v : (Cc_ast.expr) = 
# 87 "cc_parse.mly"
                             ( Cc_ast.EXPR_UN_OP(Cc_ast.UN_OP_BANG,  _2) )
# 571 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | COMMA ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | RPAREN ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | PLUS | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 95 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_PLUS,  _1, _3) )
# 629 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Cc_ast.expr) = 
# 99 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_MOD,   _1, _3) )
# 644 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Cc_ast.expr) = 
# 98 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_DIV,   _1, _3) )
# 655 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Cc_ast.expr) = 
# 97 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_MUL,   _1, _3) )
# 666 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | COMMA | EQ | EQEQ | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 90 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_NEQ,   _1, _3) )
# 699 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | PLUS | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 96 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_MINUS, _1, _3) )
# 724 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 91 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_LT,    _1, _3) )
# 753 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 93 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_LEQ,   _1, _3) )
# 782 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 92 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_GT,    _1, _3) )
# 811 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 94 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_GEQ,   _1, _3) )
# 840 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | COMMA | EQ | EQEQ | NEQ | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 89 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_EQEQ,  _1, _3) )
# 877 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | COMMA | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))), _), _, (_3 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.expr) = 
# 88 "cc_parse.mly"
                      ( Cc_ast.EXPR_BIN_OP(Cc_ast.BIN_OP_EQ,    _1, _3) )
# 920 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | COMMA | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
            let _1 = () in
            let _v : (Cc_ast.expr) = 
# 106 "cc_parse.mly"
                                   ( _2 )
# 963 "cc_parse.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COMMA ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | RPAREN ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState58 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Cc_ast.expr) = 
# 84 "cc_parse.mly"
                             ( _2 )
# 1022 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | PLUS | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
            let _1 = () in
            let _v : (Cc_ast.expr) = 
# 86 "cc_parse.mly"
                             ( Cc_ast.EXPR_UN_OP(Cc_ast.UN_OP_MINUS, _2) )
# 1047 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | PLUS | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
            let _1 = () in
            let _v : (Cc_ast.expr) = 
# 85 "cc_parse.mly"
                             ( Cc_ast.EXPR_UN_OP(Cc_ast.UN_OP_PLUS,  _2) )
# 1072 "cc_parse.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState62 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | BREAK ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | CONTINUE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | ID _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IF ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | NUM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | PLUS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | RETURN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | SEMICOLON ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | WHILE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState66 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Cc_ast.stmt) = 
# 61 "cc_parse.mly"
                                   ( Cc_ast.STMT_RETURN(_2) )
# 1189 "cc_parse.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState70 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | BREAK ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | CONTINUE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | ID _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | IF ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | NUM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
            | PLUS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | RETURN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | SEMICOLON ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | WHILE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState71
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState15 | MenhirState85 | MenhirState63 | MenhirState71 | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASTERISK ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | DIV ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EQ ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | GEQ ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | GT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LEQ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | LT ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | MOD ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | NEQ ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState81 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Cc_ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Cc_ast.stmt) = 
# 65 "cc_parse.mly"
                                   ( Cc_ast.STMT_EXPR(_1) )
# 1305 "cc_parse.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | _ ->
        _menhir_fail ()

and _menhir_goto_arg_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 3 "cc_parse.mly"
       (string)
# 1329 "cc_parse.ml"
        ))), _, (_3 : (Cc_ast.expr list))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (Cc_ast.expr) = 
# 83 "cc_parse.mly"
                             ( Cc_ast.EXPR_CALL(_1, _3) )
# 1336 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.stmt) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BANG ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | BREAK ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | CONTINUE ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LBRACE ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | MINUS ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NUM _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | PLUS ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | RETURN ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SEMICOLON ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | WHILE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | BANG | BREAK | CONTINUE | ID _ | IF | LBRACE | LPAREN | MINUS | NUM _ | PLUS | RBRACE | RETURN | SEMICOLON | WHILE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (_3 : (Cc_ast.expr))), _), _, (_5 : (Cc_ast.stmt))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Cc_ast.stmt) = 
# 75 "cc_parse.mly"
                                        ( Cc_ast.STMT_IF(_3, _5, Cc_ast.STMT_EMPTY) )
# 1399 "cc_parse.ml"
             in
            _menhir_goto_if_stmt _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), _, (_3 : (Cc_ast.expr))), _), _, (_5 : (Cc_ast.stmt))), _, (_7 : (Cc_ast.stmt))) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Cc_ast.stmt) = 
# 74 "cc_parse.mly"
                                        ( Cc_ast.STMT_IF(_3, _5, _7) )
# 1419 "cc_parse.ml"
         in
        _menhir_goto_if_stmt _menhir_env _menhir_stack _menhir_s _v
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (_3 : (Cc_ast.expr))), _), _, (_5 : (Cc_ast.stmt))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Cc_ast.stmt) = 
# 78 "cc_parse.mly"
                                   ( Cc_ast.STMT_WHILE(_3, _5) )
# 1432 "cc_parse.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Cc_ast.stmt)) = _v in
        let _v : (Cc_ast.stmt) = 
# 63 "cc_parse.mly"
                                   ( _1 )
# 1440 "cc_parse.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | MenhirState85 | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | BREAK ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | CONTINUE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | ID _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | IF ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | NUM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | RETURN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | SEMICOLON ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | WHILE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | RBRACE ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | _ ->
        _menhir_fail ()

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Cc_ast.stmt list) = 
# 199 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1488 "cc_parse.ml"
     in
    _menhir_goto_list_stmt_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ID _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NUM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Cc_ast.stmt) = 
# 58 "cc_parse.mly"
                                   ( Cc_ast.STMT_EMPTY )
# 1534 "cc_parse.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 2 "cc_parse.mly"
       (int)
# 1587 "cc_parse.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 2 "cc_parse.mly"
       (int)
# 1595 "cc_parse.ml"
    )) = _v in
    let _v : (Cc_ast.expr) = 
# 81 "cc_parse.mly"
                             ( Cc_ast.EXPR_NUM(_1) )
# 1600 "cc_parse.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | ID _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NUM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "cc_parse.mly"
       (string)
# 1687 "cc_parse.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NUM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState23 in
            let _v : (Cc_ast.expr list) = 
# 102 "cc_parse.mly"
                                   ( [] )
# 1717 "cc_parse.ml"
             in
            _menhir_goto_arg_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | ASTERISK | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | PLUS | RPAREN | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 3 "cc_parse.mly"
       (string)
# 1729 "cc_parse.ml"
        ))) = _menhir_stack in
        let _v : (Cc_ast.expr) = 
# 82 "cc_parse.mly"
                             ( Cc_ast.EXPR_VAR(_1) )
# 1734 "cc_parse.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Cc_ast.stmt) = 
# 59 "cc_parse.mly"
                                   ( Cc_ast.STMT_CONTINUE )
# 1760 "cc_parse.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Cc_ast.stmt) = 
# 60 "cc_parse.mly"
                                   ( Cc_ast.STMT_BREAK )
# 1786 "cc_parse.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAREN ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NUM _v ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | PLUS ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_goto_list_var_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Cc_ast.type_expr * string) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Cc_ast.type_expr * string))), _, (xs : ((Cc_ast.type_expr * string) list))) = _menhir_stack in
        let _v : ((Cc_ast.type_expr * string) list) = 
# 201 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1830 "cc_parse.ml"
         in
        _menhir_goto_list_var_decl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | BREAK ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | CONTINUE ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | ID _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | IF ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LPAREN ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | MINUS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | NUM _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | RETURN ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SEMICOLON ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | WHILE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | RBRACE ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_comma_parameter_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Cc_ast.type_expr * string) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : ((Cc_ast.type_expr * string) list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Cc_ast.type_expr * string))) = _menhir_stack in
        let _v : ((Cc_ast.type_expr * string) list) = 
# 46 "cc_parse.mly"
                                   ( _1::_2 )
# 1884 "cc_parse.ml"
         in
        _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Cc_ast.type_expr * string) list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Cc_ast.type_expr * string))) = _menhir_stack in
        let _v : ((Cc_ast.type_expr * string) list) = 
# 201 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1895 "cc_parse.ml"
         in
        _menhir_goto_list_comma_parameter_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LONG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | BANG | BREAK | CONTINUE | ID _ | IF | LBRACE | LPAREN | MINUS | NUM _ | PLUS | RBRACE | RETURN | SEMICOLON | WHILE ->
        _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_goto_list_definition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Cc_ast.definition list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Cc_ast.definition list))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "cc_parse.mly"
      (Cc_ast.definition list)
# 1933 "cc_parse.ml"
            ) = 
# 36 "cc_parse.mly"
                                   ( _1 )
# 1937 "cc_parse.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 32 "cc_parse.mly"
      (Cc_ast.definition list)
# 1944 "cc_parse.ml"
            )) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Cc_ast.definition))), _, (xs : (Cc_ast.definition list))) = _menhir_stack in
        let _v : (Cc_ast.definition list) = 
# 201 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( x :: xs )
# 1960 "cc_parse.ml"
         in
        _menhir_goto_list_definition_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Cc_ast.type_expr * string) list) = 
# 199 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1971 "cc_parse.ml"
     in
    _menhir_goto_list_var_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : ((Cc_ast.type_expr * string) list) = 
# 199 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 1985 "cc_parse.ml"
     in
    _menhir_goto_list_comma_parameter_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LONG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_goto_parameter_list : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Cc_ast.type_expr * string) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Cc_ast.definition list) = 
# 199 "/home/tau/.opam/system/lib/menhir/standard.mly"
    ( [] )
# 2251 "cc_parse.ml"
     in
    _menhir_goto_list_definition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Cc_ast.type_expr) = 
# 55 "cc_parse.mly"
                                   ( Cc_ast.TYPE_LONG )
# 2263 "cc_parse.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState100 | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LONG ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
                | RPAREN ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState4 in
                    let _v : ((Cc_ast.type_expr * string) list) = 
# 45 "cc_parse.mly"
                                   ( [] )
# 2291 "cc_parse.ml"
                     in
                    _menhir_goto_parameter_list _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState91 | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (
# 3 "cc_parse.mly"
       (string)
# 2322 "cc_parse.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (Cc_ast.type_expr))) = _menhir_stack in
            let _v : (Cc_ast.type_expr * string) = 
# 52 "cc_parse.mly"
                                   ( (_1,_2) )
# 2328 "cc_parse.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState4 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | RPAREN ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
            | MenhirState91 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (_2 : (Cc_ast.type_expr * string))) = _menhir_stack in
                let _1 = () in
                let _v : (Cc_ast.type_expr * string) = 
# 49 "cc_parse.mly"
                                   ( _2 )
# 2353 "cc_parse.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | COMMA ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | RPAREN ->
                    _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, (_1 : (Cc_ast.type_expr))), (_2 : (
# 3 "cc_parse.mly"
       (string)
# 2394 "cc_parse.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _v : (Cc_ast.type_expr * string) = 
# 71 "cc_parse.mly"
                                   ( (_1, _2) )
# 2400 "cc_parse.ml"
                 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LONG ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                | BANG | BREAK | CONTINUE | ID _ | IF | LBRACE | LPAREN | MINUS | NUM _ | PLUS | RBRACE | RETURN | SEMICOLON | WHILE ->
                    _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 32 "cc_parse.mly"
      (Cc_ast.definition list)
# 2445 "cc_parse.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LONG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 108 "cc_parse.mly"
   

# 2471 "cc_parse.ml"

# 233 "/home/tau/.opam/system/lib/menhir/standard.mly"
  

# 2476 "cc_parse.ml"
