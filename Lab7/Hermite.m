function [H,DH]=Hermite(x,f,df,X)
  c = dif_div_double(x,f,df)(1,:);
  z = repelem(x,2);
  P = 1;
  H = c(1);
  DP=0;
  DH=0;
  for i=1:length(c)-1
    DP=DP*(X-z(i)) + P;
     P *= X-z(i);
     H += c(i+1) * P;
     DH += c(i+1) * DP;
  endfor

endfunction

