N = 10;

x = 1:1:N; 
c = x.-1;
r = 1.-x;

c = c(1,:);

A = toeplitz(c,r)
b = A*x';
#x1 = classicLS(A,b)
#x2 = qrLS(A,b)
x3 = svdLS(A,b)
x4 = tikhonovGen(A,b,1)
x5 = tikhonovIt(A,b,100,0.2)
x6 = tsvd(A,b,100)

#n1 = norm(A*x1 - b,2)
#n2 = norm(A*x2 - b,2)
norm3 = norm(A*x3 - b,2)
norm4 = norm(A*x4 - b,2)
norm5 = norm(A*x5 - b,2)
norm6 = norm(A*x6 - b,2)

#Task b)
rankn = rank(A)
condition = cond(A)
Aplus = pseudoinverse(A)