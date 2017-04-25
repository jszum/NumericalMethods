A =[ 1 2 2 3 1;
     0 4 4 6 2;
     1 2 4 5 3;
     3 6 6 9 6];
     
     
#five signals, now 100 samples each
xg = randn(5,100);

#convert to "discrete"
xg(xg < 0) = 0;
xg(xg > 0) = 1;

#sum to find when condition "at most 3 non zeros at the time" is exceeded
E = sum(xg,1);
n = find(E>3);

#and wipe when more than 3 are non-zeros
xg(:,n) = [];
     
bg = A*xg;

for i=1:5
disp(["Signal "])
x = xg(:,i);
b = bg(:,i);
x'
disp(["Focuss"])
xf = focuss(A,bg(:,i), 0.1, 1e-12,1);
xFOCUSS_transposed = xf'
solution_error = norm(x - xf)
residual_error = norm(b - A*xf)

disp(["MFocuss"])
xm = mfocuss(A,bg(:,i),0.1,1e-12,1);
xMFOCUSS_transposed = xm'
solution_error = norm(x - xm)
residual_error = norm(b - A*xm)
endfor