function [lambda, vector] = iterqr(A, iterations)

[n,n] = size(A);

lambda = [];
vector = [];
Qf = eye(n);
for i = 1:iterations
  [Q,R] = QRgivens_lecture(A);
  A = R*Q;
  
  Qf = Qf*Q;
  
endfor

lambda = diag(diag(A));
vector = Qf;
endfunction