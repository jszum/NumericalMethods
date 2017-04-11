A = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15]

x_exact = [1 2 3]'
b = A*x_exact

x1 = tsvd(A,b,1000)
x2 = tikhonovIt(A,b,1000,0.1)

Echelon = rref(A)
RankA = rank(A)

APlus = pseudoinverse(A)

%d
error1 = sum((x1-x_exact).^2)
Rerror1 = sum((b-A*x1).^2)

error2 = sum((x2-x_exact).^2)
Rerror2 = sum((b-A*x2).^2)