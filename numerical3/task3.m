A = [ 1 50 18 10;
      1 30 20 16;
      1 35 14 10;
      1 40 12 12;
      1 30 16 14;
]

b = [28; 30; 21; 23; 23;]

disp(["Classical LS"])
alpha1 = classicLS(A,b)
b = A*alpha1

tic
for i=1:1000
alpha1 = classicLS(A,b);
endfor
time = toc

disp(["SVD LS"])
alpha2 = svdLS(A,b)
b = A*alpha2

tic
for i=1:1000
alpha2 = svdLS(A,b);
endfor
time = toc

disp(["QR LS"])
alpha3 = qrLS(A,b)
b = A*alpha3

tic
for i=1:1000
alpha3 = qrLS(A,b);
endfor
time = toc

disp(["Tikhonov, alpha = 1"])
alpha4 = tikhonovGen(A,b,1)
b = A*alpha4

tic
for i=1:1000
alpha4 = tikhonovGen(A,b,1);
endfor
time = toc