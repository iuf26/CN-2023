function x_new=Gauss(A,b,nr_it)
  n=length(b);
 x_old = zeros(n,1);
 x_new = x_old;
 n = length(b);
 for k=1:nr_it
   for i=1:n
     x_new(i) = 1/A(i,i)*(
     b(i)
     -A(i,1:i-1) * x_old(1:i-1)
     - A(i,i+1:n) * x_old(i+1:n));
   endfor
   x_old=x_new;
 endfor


endfunction
