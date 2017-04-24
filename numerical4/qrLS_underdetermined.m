function [x] = qrLS_underdetermined(A,b) 

[m,n] = size(A); 
[Q, R] = qr(A'); 

z = inv(R(1:m,1:m)')*b;
x = Q(:,1:m)*z;

endfunction
