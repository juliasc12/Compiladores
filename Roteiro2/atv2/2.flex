import java_cup.runtime.*;

%%
%cup
FimdeLinha = \r|\n|\r\n
Espaco = {FimdeLinha} | [\t\f]
Inteiro = 0 | [1-9][0-9]*
OpMais = "+"
OpMenos = "-"
OpMult = "*"
OpDiv = "/"
PtoVirg = ";"
%%

{Espaco} { /* despreza */ }

{Inteiro} {
    int aux = Integer.parseInt(yytext()); 
    return new Symbol(sym.INTEIRO, new Integer(aux));
}

{OpMais} { return new Symbol(sym.MAIS);}

{OpMenos} { return new Symbol(sym.MENOS);}

{OpMult} { return new Symbol(sym.MULT);}

{OpDiv} { return new Symbol(sym.DIV);}

{PtoVirg} { return new Symbol(sym.PTVIRG);}

.|\n {throw new Error ("Caractere Ilegal <"+ yytext()+">"); }
