import java_cup.runtime.*;

%%
%cup
FimdeLinha = \r|\n|\r\n
Espaco = {FimdeLinha} | [\t]
Inteiro = 0 | [1-9][0-9]*
OpMais = "+"
OpMenos = "-"
OpMult = "*"
OpDiv = "/"
OpMod = "%"
PtoVirg = ";"
AbreParent = "("
FechaParent = ")"

%%

{Espaco} {/* despreza */ }

{FimdeLinha} { /* despreza */ }

{Inteiro} {
    int aux = Integer.parseInt(yytext()); 
    return new Symbol(sym.INTEIRO, new Integer(aux));
}

{OpMais} { return new Symbol(sym.MAIS);}

{OpMenos} { return new Symbol(sym.MENOS);}

{OpMult} { return new Symbol(sym.MULT);}

{OpMod} { return new Symbol(sym.MOD);}

{AbreParent} { return new Symbol(sym.ABREP);}

{FechaParent} { return new Symbol(sym.FECHAP);}

{OpDiv} { return new Symbol(sym.DIV);}

{PtoVirg} { return new Symbol(sym.PTVIRG);}

.|\n {throw new Error ("Caractere Ilegal <"+ yytext()+">"); }
