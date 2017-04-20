

x = 0; y = 3; z = 1;
[A,b] = setter(x,y,z);

tic
x_calcA = focuss(A,b,0.5,1e-6)
toc


x = 0; y = 0; z = 1;
[A,b] = setter(x,y,z);

tic
x_calcB = focuss(A,b,0.5,1e-6)
toc


x = -2; y = 1; z = 0;
[A,b] = setter(x,y,z);

tic
x_calcC = focuss(A,b,0.5,1e-6)
toc

