package scanner;

import java_cup.runtime.*;
import parser.SymbolCodes;

%%
%cup
%class Scanner
%public
%eofval{
    return new Symbol(SymbolCodes.EOF);
%eofval}


FimdeLinha = \r|\n|\r\n
Espaco = {FimdeLinha} | [\t\f]
Inteiro = 0 | [1-9][1-9]*
NumReal = [-]?([0-9]*[.])[0-9]+
OpMais = "+"
OpMenos = "-"
OpDiv = "/"
OpMult = "*"
OpMod = "%"
PtoVirg = ";"
Apar = "("
Fpar = ")"
letra = [a-zA-Z]
digito = [0-9]
Ident = {letra}({letra}|{digito})*

%%

{Espaco} {/* despreza */}

{Inteiro} {
	return new Symbol (SymbolCodes.INTEIRO, new Double(Double.parseDouble(yytext())));
}
{NumReal} {
	return new Symbol (SymbolCodes.REAL, new Double(Double.parseDouble(yytext())));
}
{Ident} {
	return new Symbol (SymbolCodes.IDENT, yytext());
}

{OpMais} { return new Symbol (SymbolCodes.MAIS); }

{OpMenos} { return new Symbol (SymbolCodes.MENOS); }

{OpDiv} { return new Symbol (SymbolCodes.DIV); }

{OpMult} { return new Symbol (SymbolCodes.MULT); }

{OpMod} { return new Symbol (SymbolCodes.MOD); }

{PtoVirg} { return new Symbol (SymbolCodes.PTVIRG); }

{Apar} { return new Symbol (SymbolCodes.APAR); }

{Fpar} { return new Symbol (SymbolCodes.FPAR); }

.|\n { throw new Error("Caractere Ilegal <"+yytext()+">"); }