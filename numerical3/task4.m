A = [1 1;
     1 2;
     1 3;
     1 4;
     1 5;
     1 6;
     1 7;
     1 8;]
     
b = [1.5; 2.0; 2.8; 4.1; 4.9; 6.3; 5.0; 11.5;]

disp(["Classical LS"])
alpha1 = classicLS(A,b)
bc = A*alpha1

error = norm(bc - b)

tic
for i=1:1000
alpha1 = classicLS(A,b);
endfor
time = toc

disp(["SVD LS"])
alpha2 = svdLS(A,b)
bc = A*alpha2
error = norm(bc - b)
tic
for i=1:1000
alpha2 = svdLS(A,b);
endfor
time = toc

disp(["QR LS"])
alpha3 = qrLS(A,b)
bc = A*alpha3
error = norm(bc - b)
tic
for i=1:1000
alpha3 = qrLS(A,b);
endfor
time = toc

disp(["Tikhonov, alpha = 1"])
alpha4 = tikhonovGen(A,b,1)
bc = A*alpha4
error = norm(bc - b)
tic
for i=1:1000
alpha4 = tikhonovGen(A,b,1);
endfor
time = toc

disp(["Linear regression"])
alpha5 = regression(A,b)
bc = A*alpha5
error = norm(bc - b)
tic
for i=1:1000
alpha4 = regression(A,b);
endfor
time = toc

