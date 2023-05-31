 function c=taylor_coef(f,n,a=0,x)
  if n<0
    c=sym(0);
    return;
  else
    derivate = diff(f,n);
    c=subs(derivate, x, sym(0)) / factorial(n);
  end
 endfunction

