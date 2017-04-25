A = [-4 -2 -4 -2; 
      2 -2  2  1; 
      4  1 -4 -2]
  
b = [-12; 3; -9]

b_perturbed = awgn(b,20);


disp(["Original b"])
tic
x_nnls = nnls(A,b,1000)
e_nnls = norm(A*x_nnls - b)

tic
x_QR = qrLS_underdetermined(A,b)
toc
e_qr = norm(A*x_QR - b)

tic
x_SVD = svdLS_underdetermined(A,b)
toc
e_svd = norm(A*x_SVD - b)


b = b_perturbed;
disp(["b perturbed by noise"])
tic
x_nnls = nnls(A,b,1000)
e_nnls = norm(A*x_nnls - b)

tic
x_QR = qrLS_underdetermined(A,b)
toc
e_qr = norm(A*x_QR - b)

tic
x_SVD = svdLS_underdetermined(A,b)
toc
e_svd = norm(A*x_SVD - b)