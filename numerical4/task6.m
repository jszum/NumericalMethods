A = [ 73 71 52;
      87 74 46;
      72  2  7;
      80 89 71;]
      
b = [49; 67; 68; 20;]

x_nnls = nnls(A,b,1000)

e_focuss0 = norm(A*x_nnls - b)