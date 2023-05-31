 function [x,ni,rho]=model_sys_lin(A,b,omega,type,nr_max_it=1e+4,err=1e-14,p=Inf)
 %omega este omis pentru Jacobi si Gauss-Seidel
 if(strcmp(type,"gauss") == 1)
  M = tril(A);
 elseif (strcmp(type,"jacobi") == 1)
  M = diag(diag(A));
 elseif (strcmp(type,"sor") == 1)
   M = 1/omega * diag(diag(A)) +tril(A,-1);
 else
   error('Invalid method should be one of the following: jacobi,gauss,sor');
 endif
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
