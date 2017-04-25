A = [ 0  3  1;
     -1 -2  1;
      3  7 -1];

x = 0; y = 3; z = 1;
[A,b] = setter(x,y,z);

tic
x_calcA = focuss(A,b,0.5,1e-6,1)
toc
ba = A*x_calcA

solution_error = norm([x;y;z] - x_calcA)
residual_error = norm(b - A*x_calcA)


x = 0; y = 0; z = 1;
[A,b] = setter(x,y,z);

tic
x_calcB = focuss(A,b,0.5,1e-6,1)
toc
bb = A*x_calcB

solution_error = norm([x;y;z] - x_calcB)
residual_error = norm(b - A*x_calcB)
x = -2; y = 1; z = 0;
[A,b] = setter(x,y,z);

tic
x_calcC = focuss(A,b,0.5,1e-6,1)
toc
bc = A*x_calcC

solution_error = norm([x;y;z] - x_calcC)
residual_error = norm(b - A*x_calcC)