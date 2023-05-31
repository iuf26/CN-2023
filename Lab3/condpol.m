function nr_cond=condpol(coefs,xi)
%numarul de cond. a aflarii rad. xi a unei ec. pol.
%coefs=coeficientii pol.
coefs_der=polyder(coefs); %coef. derivatei lui p;

nr_cond=polyval(abs(coefs(2:end)),abs(xi))/abs(xi*polyval(coefs_der,xi));
%!!Observatie: se ia formula din culegerea de probleme rezolvate, vezi demonstratia
%si de unde a rezultat aceasta formula la paginile 51- 52
%formula din culegere:
%cond = 1/abs(xi * polinomul_derivat_in_xi) * (polinomul evaluat pentru termenii pana la rang n-1 in punctul xi )
%aici practic polyval face suma modulelor coeficientilor

%!!! Aici luam coeficientii doar pana la rangul n-1 deoarece orice polinom poate fi impartit cu coeficientul dominant
%si coeficientul lui x^n devine 1
endfunction;




#verificari
#p = x-a

