function [A] = gaussian_elim(A)

[n,m] = size(A);

for k = 1:n-1
  #discussed on the lectre -> to avoid second loop, the 'rows' are used
  rows = k+1:n;
  A(rows, k) = A(rows,k)/A(k,k);
  A(rows,rows) = A(rows,rows) - A(rows,k)*A(k,rows);
end