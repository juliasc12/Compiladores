%%

%standalone
%class ex6

letra=[A-Za-z]
digito=[0-9]
kw_int="int"
kw_while="while"
kw_float="float"
kw_cout="cout"
op_igual="="
op_menorIgual="<="
op_soma="+"
leftpar="("
rightpar=")"
leftchaves="{"
rightchaves="}"
seta_cout="<<"
op_divisao="/"
pv=";"
float={digitos}("."){digitos}
digitos={digito}{digito}*
ident={letra}({letra}|{digito})*
exponencial="E"("+|-"){digitos} /*n ta funcionando*/


%%
{kw_float} { System.out.println(" KW_FLOAT "); }
{leftpar} { System.out.println(" LEFTPAR "); }
{rightpar} { System.out.println(" RIGHTPAR "); }
{kw_int} { System.out.println(" KW_INT "); }
{kw_cout} { System.out.println(" KW_COUT"); }
{kw_while} { System.out.println(" KW_WHILE"); }
{op_divisao} { System.out.println(" OP_DIVISAO "); }
{op_igual} { System.out.println(" OP_IGUAL "); }
{op_soma} { System.out.println(" OP_SOMA "); }
{op_menorIgual} { System.out.println(" OP_MENORIGUAL "); }
{digitos} { System.out.println(" VAR_INT "); }
{float} { System.out.println(" VAR_FLOAT "); }
{ident} { System.out.println(" IDENTIFICADOR "); }


