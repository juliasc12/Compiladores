import java_cup.runtime.*;

%%
%cup
FimdeLinha = \r|\n|\r\n
Espaco = {FimdeLinha} | [\t\f]
Inteiro = 0 | [1-9][0-9]*
OpMais = "+"
OpMenos = "-"
PtoVirg = ";"

%%

{Espaco} {/*despreza*/}

{Inteiro} {
	int aux = Integer.parseInt(yytext());
	System.out.println("scanner :"+aux);
	return new Symbol(sym.INTEIRO, new Integer(aux)); }

{OpMais} {return new Symbol(sym.MAIS);}

{OpMenos} {return new Symbol(sym.MENOS);}

{PtoVirg} {return new Symbol(sym.PTVIRG);}

[^]|\n {throw new Error ("Caractere Ilegal <" + yytext() + ">");}
