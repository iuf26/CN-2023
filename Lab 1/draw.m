function F=draw(f,x,a,b,t,r)
    clf; hold on; grid on;
  rh=function_handle(r);
  th = function_handle(t);
  fplot(rh,[a,b]);
  fplot(th,[a,b]);
  L={'f'};

    #T= exp(x);
    #T  = log(x+1);
    Fh = function_handle(f);
    fplot(Fh,[a,b]);
    L{end+1}=['F' num2str(i)];

 legend( 'R - aproximare pade', 'T - polinom taylor','F = sqrt((1+x/2)/(1+2*x)) ' );

endfunction
