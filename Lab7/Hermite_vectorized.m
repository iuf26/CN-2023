function [H_vec,DH_vec]=Hermite_vectorized(x_vec,f_vec,df_vec,X_vec)
  H_vec = [];
  DH_vec = [];
  inputs_count = size(x_vec)(1);
  for i=1:inputs_count
  X = X_vec(i,1:end);
  x = x_vec(i,1:end);
  f = f_vec(i,1:end);
  df = df_vec(i,1:end);
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
    H_vec = [H_vec;H];
    DH_vec = [DH_vec;DH];
  endfor
endfunction

