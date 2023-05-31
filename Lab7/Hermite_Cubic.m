function [H,DH]=Hermite_Cubic(x,f,df,X)
  % interpolare cubica pe portiuni
  %x (vectorul de noduri ordonate crescător)
  % noduri duble - Deoarece pentru fiecare nod avem doua valori, ale functiei si ale derivatei sale, spunem ca nodurile sunt duble.
  if (issorted(x,'ascend') == 0)
    error('Pentru vectorul de noduri x valorile trebuie sa fie in ordine crescatoare');
  endif

  if (X < x(1) || X > x(end))
     error('X nu este intre x(1) si x(end)');
  endif

  x_size = length(x);
  for k=1:x_size - 1
      if (x(k) <= X && X <= x(k+1))
        [H,DH] = Hermite([x(k) x(k+1)],[f(k) f(k+1)],[df(k) df(k+1)],X);
        break;
      endif
  endfor








