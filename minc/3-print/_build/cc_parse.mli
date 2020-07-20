
(* The type of tokens. *)

type token = 
  | WHILE
  | SEMICOLON
  | RPAREN
  | RETURN
  | RBRACE
  | PLUS
  | NUM of (int)
  | NEQ
  | MOD
  | MINUS
  | LT
  | LPAREN
  | LONG
  | LEQ
  | LBRACE
  | IF
  | ID of (string)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Cc_ast.definition list)
