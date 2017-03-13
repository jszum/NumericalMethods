function [L, U] = lu_fac(A)

[n, n] = size(A);

L = eye(n);
U = zeros(n,n)

for j = 1:n
  if (j == 1)
    v(j:n) = A(j:n,j);
    
  else
    #the elimination below won't work
    #z = (A(1:j-1,j)) / (L(1:j-1, 1:j-1));
    
    z = inv((L(1:j-1, 1:j-1))) * (A(1:j-1,j));
    U(1:j-1, j) = z;
    
    v(j:n) = A(j:n, j) - L(j:n, 1:j-1)*z
  endif
  
  if(j<n)
    L(j+1:n, j) = v(j+1:n) / v(j);
  end
  U(j,j) = v(j);
  
end