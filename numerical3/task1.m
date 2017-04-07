A1 = [3 -1; 1 2; 2 1];
b1 = [4; 0; 1];


disp(["Classical LS"])
x1 = classicLS(A1,b1)
b = A1*x1

disp(["SVD LS"])
x11 = svdLS(A1,b1)
b = A1*x11

disp(["QR LS"])
x111 = qrLS(A1,b1)
b = A1*x111

disp(["regressionl"])
x1111 = regression(A1,b1)
b = A1*x1111


A2 = [3 1 1; 2 3 -1; 2 -1 1; 3 -3 3];
b2 = [6; 1; 0; 8];


disp(["Classical LS"])
x2 = classicLS(A2,b2)
b = A2*x2

disp(["SVD LS"])
x22 = svdLS(A2,b2)
b = A2*x22
disp(["QR LS"])
x222 = qrLS(A2,b2)
b = A2*x222

A3 = [1 1 -1; 2 -1 6; -1 4 1; 3 2 -1];
b3 = [5; 1; 0; 6];

disp(["Classical LS"])
x3 = classicLS(A3,b3)
b = A3*x3

disp(["SVD LS"])
x33 = svdLS(A3,b3)
b = A3*x33

disp(["QR LS"])

x333 = qrLS(A3,b3)
b = A3*x333
