A = [ 1  1 1  1;
      1  3 1  1;
      1 -1 3  1;
      1  1 1  3;
      1  1 1 -1]
      
b = [2; 1; 6; 3; 1;]


B = [ 1  1  1 -1;
      1 -1  1  1;
      1  1 -1  1]
      
d = [1; 3; -1;]


p0 = 0;
p1 = 1;
lambda = 1e-8;

x = (b\A)'

x_focuss0 = focuss(A,b,p0, lambda)
x_focuss1 = focuss(A,b,p1, lambda)

x_mfocuss0 = mfocuss(A,b,p0, lambda)
x_mfocuss1 = mfocuss(A,b,p1, lambda)


e_focuss0 = norm(B*x_focuss0 -d)
e_focuss1 = norm(B*x_focuss1 -d)
e_mfocuss0 = norm(B*x_mfocuss0 -d)
e_mfocuss1 = norm(B*x_mfocuss1 -d)