syms x;
n = 4;
a = -sym(1);
b = sym(1);
wab = simplify((x-a)*(b-x)*w)
pi2 = orto_poly_sym_type('Cebisev2',2);
sols = solve(pi2,x);

nodes = [a sols' b];
coefs = gauss_coefs_sym(w,a,b,nodes);

rest_fara_f = 1/factorial(6)*int(pi2^2*wab,a,b)




