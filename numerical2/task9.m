A1=[1 i; -i 1];

disp(['A1 Matrix Schur'])
[U,R]=schur(A1)
disp(['A1 Matrix embedded eig()'])
[l, v] = eig(A1)

A2=[1 0 1+i; 0 2 0; 1-i 0 0];
disp(['A2 Matrix Schur'])
[U,R]=schur(A2)
disp(['A2 Matrix embedded eig()'])
[l, v] = eig(A2)