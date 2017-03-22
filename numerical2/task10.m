A1 = [1 1; 0 1; 1 0];
A2 = [-1;2; 2];
A3 = [2 2 2 2; 17/10 1/10 -17/10 -1/10; 3/5 9/5 -3/5 -9/5];

iterations = 20;

disp(['A1 Matrix'])
tic
for i = 1:1000
[u,s,v] = svdqr(A1,10);
endfor
toc

tic
for i = 1:1000
[u,s,v] = svd(A1,10);
endfor
toc



disp(['A2 Matrix'])
tic
for i = 1:1000
[u,s,v] = svdqr(A2,10);
endfor
toc
tic
for i = 1:1000
[u,s,v] = svd(A2,10);
endfor
toc

disp(['A3 Matrix'])
tic
for i = 1:1000
[u,s,v] = svdqr(A3,10);
endfor
toc
tic
for i = 1:1000
[u,s,v] = svd(A3,10);
endfor
toc
