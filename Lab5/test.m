n=10;
A=diag(5*ones(n,1)) + diag(-ones(n-1,1),1) + diag(-ones(n-1,1),-1) + diag(-ones(n-3,1),3) + diag(-ones(n-3,1),-3);

b=[3;2;2;ones(n-6,1);2;2;3];
x_J=Jacobi(A,b,10);
x_G = Gauss(A,b,10);
x_S=SOR(A,b,1.15,10);
[x_J,x_G,x_S];

nr_max_it=1e+4;
err=1e-14;
[x_j,ni_j,rho_j] = model_sys_lin(A,b,-1,"jacobi");

[x_g,ni_g,rho_g] = model_sys_lin(A,b,-1,"gauss");

omegaOptim = 2 / (1 + sqrt(1 - rho_g ^ 2));

[xSOR,niSOR,rhoSOR] = model_sys_lin(A,b,omegaOptim,"sor");
%[x,ni,rho] = model_sys_lin(A,b,-1,"sor",nr_max_it, err,100);

