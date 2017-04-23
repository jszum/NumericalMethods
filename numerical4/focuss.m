function [x] = focuss(A,b,p,lambda)

[m,n] = size(A);


x = rand(n,1);
I = eye(m);

for k = 1:100
  W=diag(abs(x)).^(1-p/2);
  W2 = W.*W;
  x=W2*A'*inv(A*W2*A'+lambda*I)*b;
endfor

endfunction
