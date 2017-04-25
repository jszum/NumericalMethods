function [a,x,b] = galerkin(n)

h = 1/n;
a = zeros(n,n);
x = zeros(n,1);
b = zeros(n,1);

for i=1:n

  for j = 1:n
    if(i==j)
      a(i,j) = h*h*(h*(i*i - i + 1/4)-(i - 2/3));
    else
      a(i,j) = h*h*(j - 1/2)*(h*(i - 1/2) - 1);
    endif
   
  endfor
  
  s = sin(4*pi*h*i);
  if(s>0)
    x(i,1) = abs(s);
  endif

endfor

  b = a*x;

endfunction