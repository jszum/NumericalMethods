function [A, b] = setter(x,y,z)

a =  x + 3*y + z;
b = -x - 2*y + z;
c = 3*x + 7*y - z;

A = [ 0  3  1;
     -1 -2  1;
      3  7 -1]
      
b = [a;b;c]

endfunction
