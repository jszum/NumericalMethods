A = [1 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2]


#is positive definite?
positivedefinite = all(eig(A) > 0)
#in this case G is upper triangular matrix
disp(['Cholesky factorization'])
G = cholesky_fac(A)


disp(['Inversion using coded Cholesky factorization'])
inv(G)*inv(G)'
disp(['Embedded inversion'])
inv(A)

disp([' '])
disp([' '])
disp(['Timing comparison (1000 round for each algorithm)'])
disp(['Own algorithm'])
tic

for i = 1:1000
  G = cholesky_fac(A);
end
toc
disp([' '])
disp([' '])
disp(['Embedded algorithm'])
tic
for i = 1:1000
  G = chol(A);
end
toc