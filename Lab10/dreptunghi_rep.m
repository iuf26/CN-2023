function arie=dreptunghi_rep(f,a,b,n)
  h = (b-a)/n;
  x_mij=a+h/2:h:b-h/2;
  arie = sum(f(x_mij)) * h;

 #int integrala calculata simbolic
 #integral e numeric
 #eroare se masoara abs(ans - pi)
