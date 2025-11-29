import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup

WHITESPACE = [ \t\n\r]+ 
DIGIT = [0-9]+
FLOAT = {DIGIT}\.{DIGIT}
LETRA  = [A-Za-z]
IDENT = {LETRA} ({LETRA}|{DIGIT})*
STRING = \"[^\"]*\"
NEWLINE = \r?\n
INDENT_SPACE = [ ]+
COMMENT_SL = "#".*
COMMENT_ML =  "'''" ([^'] | ('{1,2}[^']))* "'''"

%%

<YYINITIAL> {
    {WHITESPACE}  { /**/ }
    ":"           { return new Symbol(sym.DELIMITER); }
    ";"           { return new Symbol(sym.SEMI); }
    "+"           { return new Symbol(sym.PLUS); }
    "-"           { return new Symbol(sym.MINUS); }
    "*"           { return new Symbol(sym.TIMES); }
    "/"           { return new Symbol(sym.DIV); }
    "%"           { return new Symbol(sym.MOD); }
    "("           { return new Symbol(sym.LPAREN); }
    ")"           { return new Symbol(sym.RPAREN); }
    "["           { return new Symbol(sym.LBRACKET); }
    "]"           { return new Symbol(sym.RBRACKET); }
    "def"         { return new Symbol(sym.FUNC); }
    "if"          { return new Symbol(sym.IF); }
    "for"         { return new Symbol(sym.FOR); }
    "while"       { return new Symbol(sym.WHILE); }
    "in"          { return new Symbol(sym.IN); }
    "range"       { return new Symbol(sym.RANGE); }
    "else"        { return new Symbol(sym.ELSE); }
    "="          { return new Symbol(sym.AT); }
    "=="          { return new Symbol(sym.EQ); }
    "!="          { return new Symbol(sym.NEQ); }
    "<"           { return new Symbol(sym.LT); }
    ">"           { return new Symbol(sym.GT); }
    "<="          { return new Symbol(sym.LE); }
    ">="          { return new Symbol(sym.GE); }
    "&&"          { return new Symbol(sym.AND); }
    "||"          { return new Symbol(sym.OR); }
    "!"           { return new Symbol(sym.NOT); }
    "{"           { return new Symbol(sym.CLBRACKET); }
    "}"           { return new Symbol(sym.CRBRACKET); }
    {IDENT}       { return new Symbol(sym.IDENT, yytext()); }
    {DIGIT}       { return new Symbol(sym.NUMBER, Integer.parseInt(yytext())); }
    {FLOAT}       { return new Symbol(sym.FLOAT, Float.parseFloat(yytext())); }
    {LETRA}       { return new Symbol(sym.LETRA, yytext()); }
    {STRING}      {
        String v = yytext().substring(1, yytext().length()-1);
        return new Symbol(sym.STRING, v);
    }

    .             { System.err.println("Illegal character: " + yytext()); }
}
