function L=lagrange_classic(x,xi,yi)
%x - symbolic x
%xi - lista cu punctele pentru axa ox
%yi - lista cu valoarea functiei f in punctul xi

%conversie xi si yi la valori simbolice pentru a putea lucra si simbolic cu aceste valori
sym_xi = sym(xi,'r');
sym_yi = sym(yi,'r');

m = length(xi);
l = sym(ones(1,m),'r'); #aici se retin valorile liste l care la sfarsit se va inmultii cu fiecare din valoarile f(xi) prezente in yi si se va face suma
                    #Vezi pdf-ul Lagrange.pdf pagina 1
for k = 1:m  #parcurgem for-ul pentru a calcula l(k)
    xj = sym_xi([1:k-1,k+1:end]);
    l(k) = prod(x - xj) / prod(xi(k) - xj);
endfor
L= sum(l .* yi);
endfunction


#xi = [0 1/6 1/2]
#yi = [0 1/2 1]
