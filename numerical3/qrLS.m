function [x] = qrLS(A,b) 

[m,n] = size(A); 
[q,r,p] = qr(A); 
c = q'*b; 
y = r(1:n,1:n) \ c(1:n); 
x = p*y; 

endfunction
