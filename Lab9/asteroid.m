function [coefs1,err1,coefs2,err2]=asteroid(x,y)
 f = x .* x;
 y2 = y .* y;
 xy = x .* y;
 only_ones = ones(1,length(x));
 A = [y2;xy;x;y;only_ones];
 [c,eroare] = supradetSys(A',f');
 coefs1 = c;
 err1 = eroare;

 B = [y;only_ones];
 [coefs2,err2] = supradetSys(B',f');




