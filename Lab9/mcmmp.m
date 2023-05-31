function [coefs,eroare]=mcmmp(x,f,k)
  %k este gradul polinomului, e recomandat sa fie mai mic ca n
    A = vander(x,k+1);
    %f trebuie dat f' ca sa fie matrice coloana
    [coefs,eroare] = supradetSys(A,f');

