function x=forwardsubs(A,b) %0-uri deasupra diagonalie principale
  n = length(b);
  x = b;
  for i=1:n
    x(i)=(b(i)-A(i,1:i-1)* x(1:i-1))/A(i,i);
  endfor
end

