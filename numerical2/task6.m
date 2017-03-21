A = [1 2 3 4; 1 2 2 3; 0 2 3 2; 0 0 3 4];

[lambda, vector] = eig(A)
[lambda, vector] = iterqr(A,100)
[lambda, vector] = iterqr_shift(A,100)
