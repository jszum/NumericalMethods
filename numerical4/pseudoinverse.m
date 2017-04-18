function [x] = pseudoinverse(A)

[m,n] = size(A);
r = rank(A);
[u,s,v] = svdqr(A,20);

x = zeros(n,m);
for i = 1:r
  x = x + inv(s(i,i)) *v(:,i)* u(:,i)';
endfor

endfunction