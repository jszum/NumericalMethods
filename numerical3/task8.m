
#preparing the input data
x = 0:0.1:1;
f = sin(pi*x)';

for i = 1:1:3
  p(:,i)=x.^i;
endfor

#different methods
x1 = classicLS(p, f)
x2 = qrLS(p,f)
x3 = svdLS(p,f)
x4 = tikhonovGen(p,f,1)
x5 = tikhonovIt(p,f,100,0.2)
x6 = tsvd(p,f,100)

#calculating the functions according to computed coefficients
Y1 = p.*x1';
Y2 = p.*x2';
Y3 = p.*x3';
Y4 = p.*x4';
Y5 = p.*x5';
Y6 = p.*x6';

#minimizing condition
integral1 = quad(@(x)fun(x,Y1),0,1)
integral2 = quad(@(x)fun(x,Y2),0,1)
integral3 = quad(@(x)fun(x,Y3),0,1)
integral4 = quad(@(x)fun(x,Y4),0,1)
integral5 = quad(@(x)fun(x,Y5),0,1)
integral6 = quad(@(x)fun(x,Y6),0,1)