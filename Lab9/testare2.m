clf;hold on;
x= 10*rand(1,100);
f = 1 + 20*(x+2*rand(1,100));
plot(x,f,'or','markerfacecolor','r','markersize',3)

[coefs,eroare] = mcmmp(x,f,6);
p=@(X) polyval(coefs,X);
fplot(p,[0,10],'-b','linewidth',3)
