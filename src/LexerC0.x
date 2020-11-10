{
module LexerC0 where
}

%wrapper "basic"
$letter    = [a-zA-Z]
$white     = [\ \t\n\r]
$digit     = [0-9]
$quotes     = [\""]
$boolean    = [true false]

tokens :-
$white+   ;
if        { \_ -> IF_TOK }
then      { \_ -> THEN_TOK }
else      { \_ -> ELSE_TOK }
while     { \_ -> WHILE_TOK }
$digit+   { \s -> NUM_TOK (read s) }
$letter+  { \s -> VAR_TOK (read s) }
$boolean  { \s -> BOOL_TOK (read s)}
"+"       { \_ -> PLUS_TOK }
"-"       { \_ -> MINUS_TOK }
"*"       { \_ -> MULT_TOK }
"/"       { \_ -> DIV_TOK }
"%"       { \_ -> MOD_TOK }
"("       { \_ -> LPAREN_TOK }
")"       { \_ -> RPAREN_TOK }
"{"       { \_ -> LBRACE_TOK }
"}"       { \_ -> RBRACE_TOK }
"="       { \_ -> ASSIGN_TOK }
"=="      { \_ -> EQUAL_TOK }
"!="      { \_ -> NEQUAL_TOK }
"<="      { \_ -> LTOE_TOK }
">="      { \_ -> GTOE_TOK }
"<"       { \_ -> LTHEN_TOK }
">"       { \_ -> GTHEN_TOK }
";"       { \_ -> SEMICOLON_TOK }


{
data Token
  = NUM_TOK Int
  | BOOL_TOK Bool
  | VAR_TOK String
  | PLUS_TOK
  | MINUS_TOK
  | MULT_TOK
  | DIV_TOK
  | MOD_TOK
  | LPAREN_TOK
  | RPAREN_TOK
  | LBRACE_TOK
  | RBRACE_TOK
  | IF_TOK
  | ELSE_TOK
  | THEN_TOK
  | WHILE_TOK
  | ASSIGN_TOK
  | LTHEN_TOK
  | GTHEN_TOK
  | LTOE_TOK
  | GTOE_TOK
  | EQUAL_TOK
  | NEQUAL_TOK
  | SEMICOLON_TOK
  deriving (Eq, Show)

}
