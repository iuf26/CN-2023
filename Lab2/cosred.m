function ccos=cosred(x)
 ccos=0;
 u=1;
 n=0;
 while abs(u)
   ccos=ccos+u;
   n++;
   u=u* x^2 * -1/(n* (n+1));
   n++;
end
 endfunction
