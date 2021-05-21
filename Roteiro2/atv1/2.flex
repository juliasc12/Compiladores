import java_cup.runtime.Symbol;
class sym{
	public static final int IDENT = 6;
	public static final int INTEIRO = 7;
	public static final int EOF = -1;
	public static final int COMENTLINE = 8;
	public static final int ESPACO = 9;
	public static final int FIMDELINHA = 10;
}
%%
%class Roteiro02
%unicode
%cup
%line
%column
%debug

FimdeLinha = \r| \n| \r\n
CharTexto = [^\r\n]
Espaco = [ \t]
ComentLinha = "//"{Ident}* | "//"({Espaco}*{Ident}*)*
Ident = [a-zA-Z][a-zA-Z0-9]*
Inteiro = 0 | [1-9][0-9]*
%%
{ComentLinha} { return new Symbol(sym.COMENTLINE, yyline, yycolumn, yytext()); }

{Espaco} { return new Symbol(sym.ESPACO, yyline, yycolumn, yytext()); }

{Ident} { return new Symbol(sym.IDENT, yyline, yycolumn, yytext()); }

{FimdeLinha} { return new Symbol(sym.FIMDELINHA, yyline, yycolumn, yytext()); }

{Inteiro} {
	int aux = Integer.parseInt (yytext());
	return new Symbol(sym.INTEIRO, yyline, yycolumn, new Integer(aux));
}
/* erro */
[^]|\n { throw new Error("Caractere Ilegal <"+ yytext()+">");}

