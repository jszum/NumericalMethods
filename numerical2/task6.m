A = [1 2 3 4; 1 2 2 3; 0 2 3 2; 0 0 3 4];

disp(['Matlab embedded eig()'])
[lambda, vector] = eig(A)
disp(['QR iteration'])
[lambda, vector] = iterqr(A,100)
disp(['Single shift QR'])
[lambda, vector] = iterqr_shift(A,100)


disp(['Matlab embedded eig()'])
tic
for i = 1:1000
[lambda, vector] = eig(A);
endfor
toc
disp(['QR iteration'])
tic
for i = 1:1000
[lambda, vector] = iterqr(A,10);
endfor
toc
disp(['Single shift QR'])
tic
for i = 1:1000
[lambda, vector] = iterqr_shift(A,10);
endfor
toc