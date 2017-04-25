A1 =[1 2 2 3 1;
    2 4 4 6 2;
    3 6 6 9 6;
    1 2 4 5 3];
    
Am =[1 2 2 3 1;
    0 4 4 6 2;
    3 6 6 9 6;
    1 2 4 5 3];
    
x = [1 0 1 1 0]'

A = A1;
b = A*x
disp(["Regularized focuss"])
tic
x1 = focuss(A,b,0.5,1e-6,1);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["MFocuss"])
tic
x1 = mfocuss(A,b,0.1,1e-6);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["Tikhonov"])
tic
x1 = tikhonovGen(A,b,0.1,1);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["QR LS"])
tic
x1 = qrLS_underdetermined(A,b);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["SVD LS"])
tic
x1 = svdLS_underdetermined(A,b);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)


A = Am;
b = Am*x;
disp(["2. Regularized focuss"])
tic
x1 = focuss(A,b,0.5,1e-6,1);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["2. MFocuss"])
tic
x1 = mfocuss(A,b,0.1,1e-6)
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["2. Tikhonov"])
tic
x1 = tikhonovGen(A,b,0.1,1);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["2. QR LS"])
tic
x1 = qrLS_underdetermined(A,b);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)

disp(["2. SVD LS"])
tic
x1 = svdLS_underdetermined(A,b);
toc
x1'
solution_error = norm(x - x1)
residual_error = norm(b - A*x1)
