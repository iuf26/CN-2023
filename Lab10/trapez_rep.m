function arie=trapez_rep(f,a,b,n)
   h = (b-a)/n;
   x=a+h:h:b-h;
  arie = h/2*(f(a) + 2*sum(f(x)) + f(b));
