data = [0 250 500 750 1000]

A = [ 1 data(1) data(1)^2;
      1 data(2) data(2)^2;
      1 data(3) data(3)^2;
      1 data(4) data(4)^2;
      1 data(5) data(5)^2;]
      
b = [0; 8; 15; 19; 20;]

alpha = classicLS(A,b)

t=(0:1:2100);
y=alpha(1)+alpha(2)*t+alpha(3)*t.^2;
plot(t,y,data,b,'r.')
grid on
xlabel('x[km]')
ylabel('y[km]')
title('Flight path')

roots([alpha(3) alpha(2) alpha(1)]);
