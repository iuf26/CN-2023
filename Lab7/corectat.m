xi = [0 1 3];
yi = [45 21 5];
syms x;
Poli = lagrange_classic(x,xi,yi);
disp('Polinomul lui lagrange aflat prin metoda clasica:');
simplify(Poli)
disp('Verificare, evaluand polinomul obtinut in valorile din xi se obtin valorile yi deci polinomul este corect determinat');
Fx = xi';
PolinomEvaluat = subs(Poli, x, Fx);
rezultatVerificare = PolinomEvaluat';
rezultatVerificare
disp('xi');
xi
disp('yi');
yi
