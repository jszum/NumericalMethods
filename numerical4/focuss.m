function [x] = focuss(A,b,p,lambda, regul)

[m,n] = size(A);

x = rand(n,1);

#when reg = I, then we have generalized focuss
if(regul == 1)
  regul = eye(m);
endif

for k = 1:100
  W=diag(abs(x)).^(1-p/2);
  W2 = W.*W;
  x=W2*A'*inv(A*W2*A'+lambda*regul)*b;
endfor

endfunction
