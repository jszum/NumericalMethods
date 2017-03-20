A = [0.0001 1; 1 1 ]
b = [1;2]
P = [A, b]
NP = [A, b];
WP = [A, b];

disp(['Calculation without pivoting'])
disp([' '])
disp(['R2 - 1e-4*R1'])
NP(2,:) = NP(2,:) - 1e4*NP(1,:)

x2 = round(NP(2,3)/NP(2,2))
x1 = (NP(1,3) - NP(1,2))/NP(1,1)

disp([' '])
disp([' '])
disp(['And with pivoting'])
disp([' '])
disp(['R1<->R2'])
WP = exchange(WP,1,2)
disp(['R2 - 1e-4*R1'])
WP(2,:) = WP(2,:) - 1e-4*WP(1,:)


x2 = round(WP(2,3)/WP(2,2))
x1 = (WP(1,3) - WP(1,2))/WP(1,1)