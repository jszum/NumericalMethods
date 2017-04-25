function [x] = crossvalidation(A,b, mi)

C = inv(A'*A);

M = A' * A + (mi.^2).^C'*C;

x = inv(M)*A'*b;

endfunction