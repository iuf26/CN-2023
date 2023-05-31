function [H_vec,DH_vec]=Hermite_Cubic_vectorized(x_vec,f_vec,df_vec,X_vec)
   H_vec = [];
   DH_vec = [];
   inputs_count = size(x_vec)(1);

  for i=1:inputs_count
    [H DH] = Hermite_Cubic(x_vec(i,1:end),f_vec(i,1:end),df_vec(i,1:end),X_vec(i));
    H_vec = [H_vec; H];
    DH_vec = [DH_vec; DH];
  endfor

