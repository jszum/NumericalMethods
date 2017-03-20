function [b] = forwardsub(C)

[n,m] = size(C);

L = C(:,1:m-1);
b = C(:,m);

b(1) = b(1)/U(1,1);

for i = 2:n
  b(i) = (b(i) - L(i, 1:i-1)*b(1:i-1))/L(i,i);

end
end