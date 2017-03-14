A = [1 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2]

#in this case G is upper triangular matrix
G = cholesky_fac(A)

disp(['Embedded inversion'])
inv(A)

disp(['Inversion using Cholesky factorization'])
inv(G)*inv(G)'