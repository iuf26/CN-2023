function [c,eroare]=supradetSys(A,f)
  [Q,R] = qr(A); %descompunerea QR
  [n,m] = size(A);
  b = Q' * f;
  c = R(1:m,:) \ b(1:m);
  eroare = norm(b(m+1:n));



