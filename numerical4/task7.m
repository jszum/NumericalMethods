A = [-4 -2 -4 -2; 
      2 -2  2  1; 
      4  1 -4 -2]
  
b = [-12; 3; -9]

x_nnls = nnls(A,b,1000)
e_focuss0 = norm(A*x_nnls - b)

x_gcv = crossvalidation(A,b,1)
x_QR = qrLS_underdetermined(A,b)
x_SVD = svdLS_underdetermined(A,b)