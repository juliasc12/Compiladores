%%
%standalone
Binario = [0-1]
LingA = {Binario}{3}
LingB = {Binario}{4}{Binario}*
%%
{LingA} { System.out.println("Ling. A"); }
{LingB} { System.out.println("Ling. B"); }