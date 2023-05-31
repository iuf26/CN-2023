function x=backwardssubs(A,b) #pentru 0-uri sub diagonala principala
  n = length(b);
  x = b;
  for i=n:-1:1
    x(i)=(b(i)-A(i,i+1:end)* x(i+1:end))/A(i,i);
  endfor

