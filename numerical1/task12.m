A = [0 -1 -3; 0 0 -2; 0 -2 1]

[Q, R] = QRgivens_lecture(A)

disp(['check by Q*R'])
Q*R



for i = 1:1000
[Q, R] = QRgivens_lecture(A);
end
toc
disp([' '])
disp([' '])
disp(['Embedded algorithm'])
tic
for i = 1:1000
  [Q, R] = qr(A);
end
toc