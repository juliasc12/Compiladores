%%

%standalone
%class ex2  /* define nome da classe gerada. Antes era "Yylex.java"*/
%unicode  /* permite usar caracteres unicode */
%line  /* permite usar yyline */
%column  /* permite usar yycolumn */

Digito =[0-9]
Inteiro =(0|[1-9]{Digito}*)
ParAB =(aa|bb)
ConcatenadoAB =(ab|ba)
Ex2 =({ParAB}+|{ConcatenadoAB}+)


%%
{Inteiro} {System.out.println("A sequencia: " + yytext()+" casou com um inteiro. Linha:"+ yyline+"|Coluna:"+ yycolumn);}
{Ex2} {System.out.println ("A sequencia:" + yytext() +" possui um numero par de A e B. Linha:"+ yyline+"|Coluna:"+ yycolumn);}