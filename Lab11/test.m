 f = @(x) exp(cos(x));
 a = 1;
 b = 4;
 epsi = 0.01;
 QAdQuad = adQuad(f,a,b,epsi);
 disp('adQuad result:')
 disp(QAdQuad );
 disp('integrala de la 1 la 4 din e^(cos(x))')
 integral(f,1,4)
