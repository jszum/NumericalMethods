A = [ 2 3 -1 10 21 44 -9  1 -1;
      1 2  2  8 15 35  8 -3  1;
      3 1  1  6 16 53 -7  2  2;]
      
b = [118; 77; 129;]

p0 = 0;
p1 = 1;
lambda = 1e-8;

x = (b\A)';
x_transposed = x'

x_focuss0 = focuss(A,b,p0, lambda,1);
x_focuss1 = focuss(A,b,p1, lambda,1);
x_focuss0'
x_focuss1'

x_mfocuss0 = mfocuss(A,b,p0, lambda,1);
x_mfocuss1 = mfocuss(A,b,p1, lambda,1);
x_mfocuss0'
x_mfocuss1'

# residual error
e_focuss0 = norm(A*x_focuss0 -b)
e_focuss1 = norm(A*x_focuss1 -b)

e_mfocuss0 = norm(A*x_mfocuss0 -b)
e_mfocuss1 = norm(A*x_mfocuss1 -b)