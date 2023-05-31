function x = Cholesky_system(A,b)
%pentru existenta descompunerii Cholesky definitia ne spune ca matricea A
%trebuie sa fie Hermiteana Pozitiv definita
%functia calculeaza solutia unui sistem folosind descompunerea cholesky

R = Cholesky_decomposition(A)';
y = forwardsubs(R, b);
x = backwardssubs(R', y);
end
