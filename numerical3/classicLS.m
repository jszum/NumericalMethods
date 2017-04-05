function [x] = classicLS(A, b)

[m,n] = size(A)

if(m >= n || rank(A) == n)
  disp(["There is an unique solution"])
  x = inv(A' * A) * A' * b;
else if ( m < n)
  disp(["Underdetermined system"])
  x = A' * inv(A * A') * b;
end
endfunction