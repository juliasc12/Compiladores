%%
%standalone
%class ex5 /* define nome da classe gerada. Antes era "Yylex.java"*/
%unicode  /* permite usar caracteres unicode */
%line  /* permite usar yyline */
%column  /* permite usar yycolumn */

Binario=(0|1)
Negacao0=[^000]
Ex5=({Binario}+{Negacao0})

%%
{Ex5} {System.out.println("A sequencia: " + yytext()+" casou com um inteiro. Linha:"+ yyline+"|Coluna:"+ yycolumn);}