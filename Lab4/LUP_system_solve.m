function x = LUP_system_solve(A,b)
%Functie care rezolva un sistem de form Ax = b prin descompunerea LUP
[L,U,P] = LUP_decomposition(A);
[m,n] = size(A);

%Aici aflam solutia sistemului L*y = P*b

b = P*b;
y = forwardsubs(L,b);

%Aici aflam solutia sistemului U * x = y
x = backwardssubs(U,y);


end
