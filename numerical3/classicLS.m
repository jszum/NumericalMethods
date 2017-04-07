function [x] = classicLS(A, b)

[m,n] = size(A);

if(m >= n || rank(A) == n)
  #disp(["There is an unique solution"]);
  x = inv(A' * A) * A' * b;
else
  #disp(["Underdetermined system"]);
  x = A' * inv(A * A') * b;
endif

endfunction