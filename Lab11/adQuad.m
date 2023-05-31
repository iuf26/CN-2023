function Q=adQuad(f,a,b,epsi)
  c = (a+b)/2;
  fa = f(a);
  fb = f(b);
  fc = f(c);
  Q = quadStep(f,a,b,epsi,fa,fc,fb);


