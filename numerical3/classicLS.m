function [x] = classicLS(A, b)

[m,n] = size(A)

if(rank(A) == n)
  disp(["There is an unique solution"])
  x = inv(A' * A) * A' * b;
else
  disp(["Rank condition not fulfilled"])
end
endfunction