function [lambda, vector] = iterqr_shift(A, iterations)

[n,n] = size(A);

lambda = [];
vector = [];
Qf = eye(n);
I = eye(n);


for i = 1:iterations
  s = A(n,n);
  shift = s*I;

  [Q,R] = QRgivens_lecture(A-shift);
  A = R*Q+shift;
  
  Qf = Qf*Q;
  
endfor

lambda = diag(diag(A));
vector = Qf;
endfunction