syms x;
a=-sym(1);
b=sym(1);
w = 1/sqrt(1-x^2);
#cebasev2
wab = simplify((x-a)*(b-x)*w);
pi2 = orto_poly_sym_type("Cebisev2",2);
sols = solve(pi2,x);
nodes=[a sols' b];
coefs = gauss_coefs_sym(w,a,b,nodes);
p =x^6 + x^4 + 7*x^2 + x;
int(p*w, x, -1,1);
coefs*subs(p,x,nodes)'
rest_fara_f = 1/factorial(6) * int(pi2^2*wab,x,a,b)
IG = eval(coefs*exp(nodes)')
eroare_max = eval(rest_fara_f)*exp(1)
