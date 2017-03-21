A = [4 2 0 0; 1 4 1 0; 0 1 4 1; 0 0 2 4]
iterations = 100;
#computing the biggest and smallest eigenpairs
t

[eigenvalue, eigenvector] = scaledpower(A, iterations)

[eigenvalue, eigenvector] = inversepower(A, iterations)