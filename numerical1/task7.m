disp(['Init of Hilbert Matrix'])
H = hilb(5)

disp(['Programmed algorithm LU'])
[L, U] = lu_fac(H)

[n,n] = size(H);

disp(['Own determinant calculus'])
detH = 1;
for i = 1:n
  detH = detH * U(i,i);
end
detH
disp(['Check with embedded function'])
det(H)

disp([' '])
disp([' '])
disp(['Timing comparison (1000 round for each algorithm)'])
disp(['Own algorithm'])
tic

for i = 1:1000
  [L, U] = lu_fac(H);
end
toc
disp([' '])
disp([' '])
disp(['Embedded algorithm'])
tic
for i = 1:1000
  [L1, U1] = lu(H);
end
toc