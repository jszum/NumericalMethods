data = [-5; -4; -3; -2; -1; 0; 1; 2; 3; 4; 5;]

b = [2; 7; 9; 12; 13; 14; 14; 13; 10; 8; 4]


#line fitting

A = [data.^0 data.^1]
alpha = classicLS(A,b)


#quadratic fitting
Aq = [data.^0 data.^1 data.^2]
alphaq = classicLS(Aq,b)

l21 = norm(b - A*alpha,2)
l22 = norm(b - Aq*alphaq,2)

t=(-5:1:5);
y=alpha(1)+alpha(2)*t;
yq=alphaq(1)+alphaq(2)*t+alphaq(3)*t.^2;

plot(t,y,t,yq,data,b,'r.')
pause

grid on
xlabel('x')
ylabel('y')
title('Fitting visualisation')