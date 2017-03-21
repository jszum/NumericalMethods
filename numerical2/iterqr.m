function [lambda, vector] = iterqr(A, iterations)

[n,n] = size(A);
orig = A
Qproduct = eye(n,n);

for i = 1:iterations
  [Q,R] = qr(A);          #calculating QR
  A = R*Q;                # assigning next step A
  
  Qproduct = Qproduct*Q;  #
  
endfor

lambda = diag(diag(A));
vector = Qproduct;
endfunction