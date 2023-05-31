function [x,ni,rho]=Jacobi_system(A,b,nr_max_it=1e+4,err=1e-14,p=Inf)
  %ni = numarul de iteratii parcurse
 M = diag(diag(A));
 N= M - A;
 T= M \ N;
 c= M \ b;
 rho= max(abs(eig(T))); %raza spectrala, raza spectrala iti spune ca cu cat e mai mica raza spectrala cu atat e mai mica
 if norm(T,p)>=1
   error('Abort, norm(T,p) >= 1, nu are loc convergenta, raza spectrala e < 1 in acest  caz!');
   return;
 endif
 factor=norm(T,p)/(1-norm(T,p));
 x_old=zeros(size(b)); ni=1;
 x=x_old;
 while ni<nr_max_it
   x= c + T * x_old;
   if (  factor * norm(x - x_old,p) < err) %criteriul de oprire
     return;
   else
    x_old = x;
    ni = ni + 1;
   endif
 endwhile
endfunction
