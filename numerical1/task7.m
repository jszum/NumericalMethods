H = hilb(5)

[L, U] = lu_fac(H)

[n,n] = size(H);

detH = 1;
for i = 1:n
  detH = detH * U(i,i);
end

detH
det(H)