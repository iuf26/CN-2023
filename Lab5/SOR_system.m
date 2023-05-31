function [x,ni,rho]=SOR_system(A,b,omega,nr_max_it=1e+4,err=1e-14,p=Inf)
 M = 1/omega * diag(diag(A)) +tril(A,-1);
 N= M - A;
 T= M \ N;
 c= M \ b;
 rho= max(abs(eig(T))); %raza spectrala, raza spectrala iti spune ca cu cat e mai mica raza spectrala cu atat e mai mica
 if norm(T,p)>=1
   error('Norm(T,p) >= 1, nu are loc convergenta, raza spectrala este < 1 in acest caz!');
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
