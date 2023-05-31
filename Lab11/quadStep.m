function Q=quadStep(f,a,b,epsi,fa,fc,fb)
  #declaring a function ex: @(x) 2 + 3*x
  h = b-a;
  c = (a+b)/2;
  fd = f((a+c)/2);
  fe = f((c+b)/2);
  Q1 = h/6 * (fa + 4*fc + fb);
  Q2 = h/12 * ( fa + 4*fd + 2*fc +4*fe +fb);
  if abs(Q1-Q2) < epsi
    Q = Q2 + (Q2-Q1)/15;
  else
    Qa = quadStep(f,a,c,epsi,fa,fd,fc);
    Qb = quadStep(f,c,b,epsi,fc,fe,fb);
    Q = Qa + Qb;
  endif

