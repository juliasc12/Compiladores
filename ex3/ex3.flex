%%

%standalone
%class ex3 /* define nome da classe gerada. Antes era "Yylex.java"*/
%unicode  /* permite usar caracteres unicode */
%line  /* permite usar yyline */
%column  /* permite usar yycolumn */

Binario=[0-1]
Multiplos3=({Binario}{Binario}{Binario})+


%%
{Multiplos3} {System.out.println("A sequencia: " + yytext()+"tem tamanho multiplo de 3. Linha:"+ yyline+"|Coluna:"+ yycolumn);}
