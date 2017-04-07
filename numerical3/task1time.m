A1 = [3 -1; 1 2; 2 1];
b1 = [4; 0; 1];

disp(["Classical LS"])
tic
for i = 1:1000
  x1 = classicLS(A1,b1);
endfor
time = toc

disp(["SVD LS"])
tic
for i = 1:1000
x11 = svdLS(A1,b1);
endfor
time = toc

disp(["QR LS"])
tic
for i = 1:1000
x111 = qrLS(A1,b1);
endfor
time = toc

disp(["regressionl"])
tic
for i = 1:1000
x1111 = regression(A1,b1);
endfor
time = toc


A2 = [3 1 1; 2 3 -1; 2 -1 1; 3 -3 3];
b2 = [6; 1; 0; 8];

disp(["Classical LS"])
tic
for i = 1:1000
x2 = classicLS(A2,b2);
endfor
time = toc

disp(["SVD LS"])
tic
for i = 1:1000
x22 = svdLS(A2,b2);
endfor
time = toc

disp(["QR LS"])
tic
for i = 1:1000
x222 = qrLS(A2,b2);
endfor
time = toc


A3 = [1 1 -1; 2 -1 6; -1 4 1; 3 2 -1];
b3 = [5; 1; 0; 6];

disp(["Classical LS"])
tic
for i = 1:1000
x3 = classicLS(A3,b3);
endfor
time = toc

disp(["SVD LS"])
tic
for i = 1:1000
x33 = svdLS(A3,b3);
endfor
time = toc

disp(["QR LS"])
tic
for i = 1:1000
x333 = qrLS(A3,b3);
endfor
time = toc