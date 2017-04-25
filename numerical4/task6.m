A = [ 73 71 52;
      87 74 46;
      72  2  7;
      80 89 71;]
      
b = [49; 67; 68; 20;]

x_exact=A\b
tic
x_nnls = nnls(A,b,1000)
toc
error_nnls = norm(A*x_nnls - b)

tic
x_octave = lsqnonneg(A,b)
toc
error_octave = norm(A*x_octave - b)