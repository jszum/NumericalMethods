function [lambda, vector] = scaledpower(A, iterations)

[n,n] = size(A);

q_prev = rand(n,1);
q_prev = q_prev/norm(q_prev);

lambda = [];
q = [];

for i = 1:iterations
z = A * q_prev;
q = z/norm(z);
q_prev = q;
endfor

lambda = q' *A*q;
vector = q;
endfunction