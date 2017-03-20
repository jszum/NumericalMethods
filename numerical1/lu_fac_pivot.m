function [L, U, p] = lu_fac_pivot(A)

[n, m] = size(A);

L = eye(n);
U = zeros(n,m);
p = zeros(n,n)

for j = 1:n
  if (j == 1)
    v(j:n) = A(j:n,j);
    
  else
    #the elimination below won't work??
    #z = (A(1:j-1,j)) / (L(1:j-1, 1:j-1));
    
    z = inv((L(1:j-1, 1:j-1))) * (A(1:j-1,j));
    U(1:j-1, j) = z;
    
    v(j:n) = A(j:n, j) - L(j:n, 1:j-1)*z;
  endif
  
  if(j<n)
    [val, index] = max(v(j:n));
    p(j) = index;
    tempV = v(j);
    v(j) = v(index);
    v(index) = tempV;
    
    tempA =  A(j,j+1:n)
    A(j,j+1:n) = A(index, j+1:n);
    A(index, j+1:n) = tempA;
    
    L(j+1:n, j) = v(j+1:n) / v(j);
    
    if(j>1)
      tempL = L(j,1:j-1);
      L(j,1:j-1) = L(index, 1:j-1);
      L(index, 1:j-1) = tempL;
    endif
  endif
  U(j,j) = v(j);
  
end