#create uniformly distributed random matrix
A=rand(1000);

disp(['Coded decompositions'])
disp(['Scaled power'])
tic
[l,v] = scaledpower(A,10);
toc

disp(['Inverse Power'])
tic
[l,v] = inversepower(A,10);
toc
disp(['QR'])
tic
[l,v] = iterqr(A,10);
toc

disp(['QR shift'])
tic
[l,v] = iterqr_shift(A,10);
toc



disp([' '])
disp([' '])
disp(['Octave decompositions'])
disp(['Eig'])
tic
[l,v] = eig(A);
toc
disp(['Schur'])
tic
[l,v] = schur(A);
toc