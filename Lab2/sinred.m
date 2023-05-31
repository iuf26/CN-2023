function ssin=sinred(x)
 ssin=0;
 u=x;
 n=0;
 while abs(u)
   ssin=ssin+u;
   n++;
   u=u * x^2 * -1/((n + 1)*(n + 2));
   n++;
 end
 endfunction

