function [b] = backsub(C)

[n,m] = size(C);

U = C(:,1:m-1);
b = C(:,m);

b(n) = b(n)/U(n,n);

for i = n-1:-1:1
  b(i) = (b(i) - U(i, i+1:n)*b(i+1:n))/U(i,i);

end
end