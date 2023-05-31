a1 = 2.*(1:1:28); % a1 reprezinta 28 numere  pentru asezarea lor deasupra diagonalei principale folosind functia spdiags
a2 = 2.*(2:1:29);% a2 - se va aseza dedesuptul diagonalei secundare,  pentru crearea lui a2 se incepe de la 2 in loc de 1 deoarece altfel nu am mai fi obtinut o matrice simetrica fata de diagonala principala
%si anume, pentru elementele date spre asezare de catre functia spdiags deasupra diagonalei principale ,spdiags porneste de la elementul de pe pozitia 2 din lista si daca nu am fi procedat
%asa atunci elementul pentru i!=j A(i,j) de sub diagonala principala nu ar fi fost egal cu A(j,i) de deasupra diagonalei principale,ci cu A(i-2,j)
b = 60.*(1:1:28); %b reprezinta ce se va afisa pe diagonala principala, am pornit de la un numar suficient de mare in construirea acestei secvente de 28 numere pentru a fi siguri ca matricea va fi diagonal dominanta                % diagonal dominanta = pentru fiecare linie, elementul de pe diagonala principala este mai mare sau egal decat suma celorlalte elemente de pe acea linie
M = [a2;b;a1]'; %M este o matrice cu 28 linii si 3 coloane, de ce 28? pe diagonala principala avem 10 elemente
%iar pe celelalte diagonale imediat urmatoare avem cate 9 elemente
% 3 coloane pentru cele 3 diagonale in matricea banda
A = spdiags( M,[-1 0 1],10,10 );
full(A);
b = sum(A)';%b-ul ales astfel incat solutiile sistemului sa fie egale cu 1
[x_jacobi,ni_jacobi,rho_jacobi] = Jacobi_system(A,b);
disp("Jacobi");
x_jacobi
ni_jacobi
rho_jacobi
[x_gauss,ni_gauss,rho_gauss] = Gauss_system(A,b);
disp("Gauss");
x_gauss
ni_gauss
rho_gauss
omegaOptim = 2 / (1 + sqrt(1 - rho_jacobi ^ 2)); %stim ca matricea A e tridiagonala
%deci putem alege un omega optim(vezi notitele de curs lab 5)
[x_SOR,ni_SOR,rho_SOR] = SOR_system(A,b,omegaOptim);
disp("Sor");
x_SOR
ni_SOR
rho_SOR



