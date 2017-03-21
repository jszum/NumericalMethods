function [lambda, vector] = inversepower(A, iterations)

[n,n] = size(A);

q_prev = rand(n,1);
q_prev = q_prev/norm(q_prev);
alpha = 1;
I = eye(n);
q = []
v=[]
for i = 1:iterations

  v = inv(A - alpha*I)*q_prev;
  q = v/norm(v);
  q_prev = q;
endfor

lambda = (q'*A*q)/(q'*q);
vector = q;

endfunction