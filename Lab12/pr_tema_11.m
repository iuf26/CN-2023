syms x;
n = 3;
a = sym(0);
b = sym(Inf);
#Pentru calcularea restului folosim formula Gauss-Radau
#avem ponderea Laguerre
w = exp(-x);
wa = (x - a) * w;
#WA  este ponderea generalizata
#n-1 = 3-1 = 2, deci avem pi2
pi2 = orto_poly_sym(wa,x,0,Inf,2);#am verificat si pe foaie cu regulile de la
#Generalized, da la fel polinomul
sols = solve(pi2,x);
nodes = [a sols']
coefs = gauss_coefs_sym(w,a,b,nodes)
#Restul conform Gauss-Radau:
rest_fara_f = sym(1)/factorial(5)*int(pi2^2*wa,a,b)
#subpunctul b
#impartim si inmultim cu un e^-x avem f(x)=log(1+exp(-x))/exp(-x) cu ponderea e^-x
fx = @(x) log(1+exp(-x))/exp(-x);
IG = eval(coefs * [fx(nodes(1)) fx(nodes(2)) fx(nodes(3))]')
IO1 = integral(@(x) log(1+exp(-x)),0,Inf)
IO2 = quad(@(x) log(1+exp(-x)),0,Inf)
#eroare_max = marginim superior restul obtinut
derivF5 = diff(fx,x,5);
#substituire
error_expr = derivF5 * rest_fara_f;
subst_func = subs(error_expr,x,1/exp(x));#acum suntem pe intervalul [0,1]
points_in_01 = linspace(0,1,10);
[maximum_error,index] = max(eval(subs(subst_func,x,points_in_01)));
disp('X in care eroare este maxima:')
points_in_01(index)
disp('Eroarea maxima:')
maximum_error
mysubs5 = subs(derivF5,x,1/exp(x));
fplot(function_handle(mysubs5),[0,1])






