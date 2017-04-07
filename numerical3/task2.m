# a)

A1= [1 0 sin(3.14*0/2);
     1 1 sin(3.14*1/2);
     1 1 sin(3.14*1/2);
     1 1 sin(3.14*(-1)/2); ];

b1 = [3; 0; -1; 2];

disp(["Classical LS"])
x1 = classicLS(A1,b1)
b = A1*x1

disp(["SVD LS"])
x11 = svdLS(A1,b1)
b = A1*x11

disp(["QR LS"])
x111 = qrLS(A1,b1)
b = A1*x111

# b)

A2 = [1 1 sin(3.14*(-1)/2);
      1 0 sin(3.14*0/2);
      1 4 sin(3.14*2/2);
      1 9 sin(3.14*3/2); ];
      
b2 = [0.5; 1; 5; 9];

disp(["Classical LS"])
x2 = classicLS(A2,b2)
b = A2*x2

disp(["SVD LS"])
x22 = svdLS(A2,b2)
b = A2*x22
disp(["QR LS"])
x222 = qrLS(A2,b2)
b = A2*x222


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