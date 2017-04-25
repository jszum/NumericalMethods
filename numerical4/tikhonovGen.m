function [x] = tikhonovGen(A,b, alpha, L)

  [m,n] = size(A);

  if(L == 1)
    L = eye(n);
  endif
  
  x = inv(A' * A + alpha.*2*L'*L) * A' * b;

endfunction