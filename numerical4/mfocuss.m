function [x] = mfocuss(A,b,p,lambda)

[m,n] = size(A);
[o,p] = size(b);

x = ones(n,1);
I = eye(m);

for k = 1:100
%  norm of each row
  w = sqrt(sum(abs(x).^2,2));
  W=diag(w.^(1-p/2));
  
  A = A * W;
  Q = A'*inv(A*A'+lambda*I)*b;
  
  x=W*Q;
  
endfor
endfunction
