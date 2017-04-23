A =[ 1 2 2 3 1;
     0 4 4 6 2;
     1 2 4 5 3;
     3 6 6 9 6];
     
     
#five signals, now 100 samples each
x = randn(5,100);

#convert to "discrete"
x(x < 0) = 0;
x(x > 0) = 1;

#sum to find when condition "at most 3 non zeros at the time" is exceeded
E = sum(x,1);
n = find(E>3);

#and wipe them
x(:,n) = [];
     
b = A*x;

for i=1:5
x(:,i)
disp(["Focuss"])
xf = focuss(A,b(:,i), 0.1, 1e-12)
error_x1m = norm(A*xf)/norm(b)

disp(["MFocuss"])
xm = mfocuss(A,b(:,i),0.1,1e-12)
error_x1 = norm(A*xm)/norm(b)
endfor