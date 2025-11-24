%%
%standalone

digito = [0-9]
letra  = [A-Za-z]
digitos = {digito} {digito}*
ident = {letra} ({letra}|{digito})*
SUM = "+"
SUBTRACT = \-
MULT = \*
DIVISION = "/"
MODULE = \%
DECLARATION = "="
EQUALS = "=="
COMPARISON = "!="
GREATER_THEN = ">"
GREATER_OR_EQ = ">="
LESS_THEN = "<"
LESS_OR_EQ = "<="
AND = "and"
NOT = "not"
KW_PKG = package
KW_INT = {digito}+
KW_FLOAT = {digito}+\.{digito}+
KW_PRINT = print
KW_FUNC = def
KW_FOR = for
KW_DELIMITER = :
KW_RETURN = return
KW_IF = "if"
KW_ELSE = "else"
KW_ELIF = "elif"
KW_WHILE = "while"
PAR  = [()]
CHAVES = [{}]
BRACKETS = \[\]
RETURN_TYPE = "->"
STRING = \"[^\"]*\"
WHITESPACE  = [ \t\n\r]+
COMMA = ,
SEMICOLON = ;
COMMENT_SL = "#".*
COMMENT_ML =  "'''" ([^'] | ('{1,2}[^']))* "'''"

%%
{WHITESPACE} {System.out.print("<WHITESPACE>");}
{SUM} {System.out.print("<SUM>");}
{SUBTRACT} {System.out.print("<SUBTRACT>");}
{MULT} {System.out.print("<MULT>");}
{DIVISION} {System.out.print("<DIVISION>");}
{MODULE} {System.out.print("<MODULE>");}
{COMPARISON} {System.out.print("<COMPARISON>");}
{GREATER_THEN} {System.out.print("<GREATER_THEN>");}
{GREATER_OR_EQ} {System.out.print("<GREATER_OR_EQ>");}
{LESS_THEN} {System.out.print("<LESS_THEN>");}
{LESS_OR_EQ} {System.out.print("<LESS_OR_EQ>");}
{DECLARATION} {System.out.print("<DECLARATION>");}
{EQUALS} {System.out.print("<EQUALS>");}
{AND} {System.out.print("<AND>");}
{NOT} {System.out.print("<NOT>");}
{KW_PKG}     {System.out.print("<KW_PKG>");}
{KW_INT}     {System.out.print("<KW_INT>");}
{KW_FLOAT}     {System.out.print("<KW_FLOAT>");}
{KW_PRINT}   {System.out.print("<KW_PRINT>");}
{KW_FUNC}    {System.out.print("<KW_FUNC>");}
{KW_DELIMITER}    {System.out.print("<KW_DELIMITER>");}
{KW_RETURN}  {System.out.print("<KW_RETURN>");}
{KW_IF}      {System.out.print("<KW_IF>");}
{KW_ELSE}    {System.out.print("<KW_ELSE>");}
{KW_ELIF}    {System.out.print("<KW_ELIF>");}
{KW_FOR}    {System.out.print("<KW_FOR>");}
{KW_WHILE}   {System.out.print("<KW_WHILE>");}
{STRING}     {System.out.print("<STRING>");}
{ident}      {System.out.print("<ident>");}
{digitos}    {System.out.print("<digitos>");}
{PAR}        {System.out.print("<PAR>");}
{CHAVES}     {System.out.print("<CHAVES>");}
{BRACKETS}     {System.out.print("<BRACKETS>");}
{RETURN_TYPE} {System.out.print("<RETURN_TYPE>");}
{COMMA} {System.out.print("<COMMA>");}
{SEMICOLON} {System.out.print("<SEMICOLON>");}
{COMMENT_SL} {System.out.print("<COMMENT_SL>");}
{COMMENT_ML} {System.out.print("<COMMENT_ML>");}
