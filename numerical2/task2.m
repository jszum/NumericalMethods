A = [4 2 0 0; 1 4 1 0; 0 1 4 1; 0 0 2 4]
iterations = 100;
#computing the biggest and smallest eigenpairs

disp(['Eigenproblems using Power methods:'])
[eigenvalueMAX, eigenvectorMAX] = scaledpower(A, iterations)
[eigenvalueMIN, eigenvectorMIN] = inversepower(A, iterations)