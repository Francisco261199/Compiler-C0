{
module LexerC0 where
}

%wrapper "basic"

$white     = [\ \t\n\f\v\r]
$digit     = [0-9]

@id        = [A-Za-z_][A-Za-z0-9_]*

tokens :-

"//".*                  ;
"/*"(\s|.)[^\/]*"*/"    ;
$white+                 ;
if                      { \_ -> IF_TOK }
else                    { \_ -> ELSE_TOK }
while                   { \_ -> WHILE_TOK }
for                     { \_ -> FOR_TOK }
return                  { \_ -> RETURN_TOK }
int                     { \_ -> INT_DEF_TOK }
bool                    { \_ -> BOOL_DEF_TOK }
main                    { \_ -> MAIN_TOK }
string                  { \_ -> STRING_TOK }
true                    { \s -> TRUE_TOK True }
false                   { \s -> FALSE_TOK False }
printint                { \_ -> PRINTINT_TOK }
scanint                 { \_ -> SCANINT_TOK }
$digit+                 { \s -> NUM_TOK (read s) }
@id                     { \s -> VAR_TOK s }
"+"                     { \_ -> PLUS_TOK }
"-"                     { \_ -> MINUS_TOK }
"*"                     { \_ -> MULT_TOK }
"/"                     { \_ -> DIV_TOK }
"%"                     { \_ -> MOD_TOK }
"("                     { \_ -> LPAREN_TOK }
")"                     { \_ -> RPAREN_TOK }
"{"                     { \_ -> LBRACE_TOK }
"}"                     { \_ -> RBRACE_TOK }
"="                     { \_ -> ASSIGN_TOK }
"=="                    { \_ -> EQUAL_TOK }
"!="                    { \_ -> NEQUAL_TOK }
"<="                    { \_ -> LTOE_TOK }
">="                    { \_ -> GTOE_TOK }
"<"                     { \_ -> LTHEN_TOK }
">"                     { \_ -> GTHEN_TOK }
";"                     { \_ -> SEMICOLON_TOK }
","                     { \_ -> COLON_TOK }
"&&"                    { \_ -> AND_TOK }
"||"                    { \_ -> OR_TOK }
"!"                     { \_ -> NOT_TOK}

{
data Token
  = NUM_TOK Int
  | MAIN_TOK
  | STRING_TOK
  | TRUE_TOK Bool
  | FALSE_TOK Bool
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
  | WHILE_TOK
  | FOR_TOK
  | ASSIGN_TOK
  | LTHEN_TOK
  | GTHEN_TOK
  | LTOE_TOK
  | GTOE_TOK
  | EQUAL_TOK
  | NEQUAL_TOK
  | SEMICOLON_TOK
  | COLON_TOK
  | RETURN_TOK
  | NOT_TOK
  | AND_TOK
  | OR_TOK
  | INT_DEF_TOK
  | BOOL_DEF_TOK
  | PRINTINT_TOK
  | SCANINT_TOK
  deriving (Eq, Show)

}
