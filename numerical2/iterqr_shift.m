function [lambda, vector] = iterqr_shift(A, iterations)

[n,n] = size(A);

lambda = [];
vector = [];
Qproduct = eye(n);
I = eye(n);


for i = 1:iterations
  s = A(n,n);                       #choose the element for shift
  shift = s*I;                      #create shifting diagonal

  [Q,R] = qr(A-shift);#apply QR factorization
  A = R*Q+shift;
  
  Qproduct = Qproduct*Q;            #multiply Q product by new Q
  
endfor

lambda = (diag(A));
vector = Qproduct;
endfunction