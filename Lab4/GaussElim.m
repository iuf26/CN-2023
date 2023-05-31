function x=GaussElim(A,b)
  A=[A b];
  n=length(b);
  for k=1:n-1
    ...pivot...
    [valmax,pozmax] = max(abs(A(k:end,k)));
    pozpivot=pozmax+k-1;
    if valmax == 0
      disp('Nu avem solutie unica!!!!');
      return;
    elseif pozpivot != k
      A([k,pozpivot],k:end)=A([pozpivot,k],k:end) #interschimbarea
    endif

  for i=k+1:n
    A(i,k:end)=A(i,k:end)-A(k,k:end)*A(i,k)/A(k,k);
  endfor
 endfor
  x=backwardssubs(A(:,1:n),A(:,n+1));#n=end-1 , bacwardsub(A,b)
end
