function R=pade_sym(f,m,k,x)
  if k==0
    R=taylor(f,'order',m+1);
  else
    c=sym(zeros(1,k)); r=c; d=c;
  for i=0:k-1
    c(i+1)=taylor_coef(f,m+i,0,x);
    r(i+1)=taylor_coef(f,m-i,0,x);
    d(i+1)=-taylor_coef(f,m+(i+1),0,x);
  endfor
   C=toeplitz(c,r);
   b=C\d';
   b=[1; b];
   a=sym(zeros(m+1,1));
  for j=0:m
    for l=0:min([j,k])
      a(j+1)=a(j+1)+taylor_coef(f,j - l,0,x)*b(l+1);   # j+1 - (l+1)
    endfor
  endfor
   R=(x.^(0:m)*a)/(x.^(0:k)*b);
  endif
endfunction





