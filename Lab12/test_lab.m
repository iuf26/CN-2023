syms x;
n = 3;
a = sym(-1);
b = sym(1);

w = sqrt(1 - x);
wa = (x - a) * w;
pi2 = orto_poly_sym(wa,x,-1,1,2);
sols = solve(pi2,x);
nodes = [a sols']
coefs = gauss_coefs_sym(w,a,b,nodes)

#b
rest_fara_f = int(pi2^2*wa,a,b) / factorial(5)
nodes
fx = @(x) sin(x) .* sqrt(1-x);
IG = eval(coefs * [fx(nodes(1)) fx(nodes(2)) fx(nodes(3))]')
IO1 = integral(@(x) sin(x) .* sqrt(1-x),-1,1)
IO2 = quad(@(x) sin(x) .* sqrt(1-x),-1,1)


