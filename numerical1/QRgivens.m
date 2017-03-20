function [Q, R] = QRgivens(A)

#function according to Bjorck (alg. 2.4.2)

[n,m] = size(A);
origA = A;

for k = 1:n
  for i = k+1:m
    [c,s,d] = proc_givrot(A(k,k), A(i,k));
    
    for j = k:n
      t = c*A(k,j) + s*A(i,j);
      A(i,j) = (-1)*s*A(k,j) + c*A(i,j);
      A(k,j) = t;
    end
  end
end
#now in A there is R matrix,
R = A;




end