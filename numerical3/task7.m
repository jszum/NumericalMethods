clear

x = 0:0.01:pi;

F = pi.^2 - x.^2;
f = F';

#we assume the largest polynomial
n = 10;
for i = 1:n
G(:,i)=cos(i*x);


#Ax = b, 
#GC = f

C = svdLS(G,f);
y = G*C;

printf("Error for n = %d",i)
error = norm(f - y, 2)
endfor