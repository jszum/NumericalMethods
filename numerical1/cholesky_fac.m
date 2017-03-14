function [G] = cholesky_fac(A)

G = A;
[n,k] = size(G);

for j = 1:n
  if (j>1)
    G(j:n,j) = G(j:n,j) - G(j:n,1:j-1)*G(j,1:j-1)';
  end
  G(j:n,j) = G(j:n,j)/sqrt(G(j,j));
end

#at the end -> eliminate what has left from A matrix when i>j
for i = 1:n
  for j = 1:k
  
    if(i>j)
      G(i,j) = 0;
  
  end
end
  
  
end