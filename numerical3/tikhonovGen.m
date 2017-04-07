function [x] = tikhonovGen(A,b, alpha)

  x = inv(A' * A + alpha.*eye(size(A'*A))) * A' * b;

endfunction