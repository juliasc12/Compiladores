%%
%standalone
%class ex4 /* define nome da classe gerada. Antes era "Yylex.java"*/
%unicode  /* permite usar caracteres unicode */
%line  /* permite usar yyline */
%column  /* permite usar yycolumn */

LetraE=(011)+
%%
{LetraE} {System.out.println("A sequencia: " + yytext()+" tem pra cada 0 dois 1 em sequencia. Linha:"+ yyline+"|Coluna:"+ yycolumn);}