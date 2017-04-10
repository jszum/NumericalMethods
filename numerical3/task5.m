data = [0 250 500 750 1000]

A = [ 1 data(1) data(1)^2;
      1 data(2) data(2)^2;
      1 data(3) data(3)^2;
      1 data(4) data(4)^2;
      1 data(5) data(5)^2;]
      
b = [0; 8; 15; 19; 20;]

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

disp(["TSVD"])
alpha6 = tsvd(A,b,10)
bc = A*alpha6
error = norm(bc - b)
tic
for i=1:1000
alpha4 = tsvd(A,b,10);
endfor
time = toc

disp(["General-Cross Validation"])
alpha7 = crossvalidation(A,b,1)
bc = A*alpha7
error = norm(bc - b)
tic
for i=1:1000
alpha4 = crossvalidation(A,b,1);
endfor
time = toc




alpha = classicLS(A,b)
t=(0:1:2100);
y=alpha(1)+alpha(2)*t+alpha(3)*t.^2;
plot(t,y,data,b,'r.')
grid on
xlabel('x[km]')
ylabel('y[km]')
title('Flight path')

roots([alpha(3) alpha(2) alpha(1)])


x = refinement(A, alpha1, b, 100);
bc = A*x;
disp(["Solution refinement:"])
error = norm(bc - b)