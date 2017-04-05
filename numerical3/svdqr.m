function [U, S, V] = svdQR(A,iterations)
   
[n, m]= size(A); # can be rectangular matrix
U=eye(n);   
V=eye(m);

R=A';  

for i = 0:iterations
    [Q,R]=qr(R');   # qr decompositions and updating  
    U=U*Q;         
    [Q,R]=qr(R');
    V=V*Q;
endfor
S=R';               # S is R transposed

endfunction