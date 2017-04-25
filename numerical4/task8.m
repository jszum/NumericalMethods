for i = 1:3

n = 10.^i
L = eye(n,n);
[A,x,b] = galerkin(n);
b_orig = b;


x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
 
disp(["b perturbed by noise 10dB"])
b = awgn(b_orig,10);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
 
disp(["b perturbed by noise 20dB"])
b = awgn(b_orig,20);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
  
disp(["b perturbed by noise 30dB"])
b = awgn(b_orig,30);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)

endfor


for i = 1:3

n = 10.^i
[A,x,b] = galerkin(n);

L = diff(A);
b_orig = b;


x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
 
disp(["b perturbed by noise 10dB"])
b = awgn(b_orig,10);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
 
disp(["b perturbed by noise 20dB"])
b = awgn(b_orig,20);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)
  
disp(["b perturbed by noise 30dB"])
b = awgn(b_orig,30);
x_nnls = nnls(A,b,1000);
e_solution_nnls = norm(x - x_nnls)
e_residual_nnls = norm(A*x_nnls - b)
x_tikhonov = tikhonovGen(A,b,0.01,L);
e_solution_tikhonov = norm(x - x_nnls)
e_residual_tikhonov = norm(A*x_tikhonov - b)

endfor