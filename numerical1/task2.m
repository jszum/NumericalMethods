
disp(['Equations in of matrix form'])
A = [1 1 1; 1 1 2; 1 2 2]
b = [1;2;1]

disp(['Conacatenation of A and B'])
C = [A, b]

# piwot at 1,1
disp(['R2 = R2 - R1'])
C(2,:) = C(2,:) - C(1,:)
disp(['R3 = R3 - R1'])
C(3,:) = C(3,:) - C(1,:)

#element at 2,2 is zero, row interchange
disp(['R3 <-> R2'])
C = exchange(C,2,3)

x3 = C(3,4)/C(3,3)
x2 = (C(2,4) - C(2,3)*x3)/C(2,2)
x1 = (C(1,4) - C(1,2)*x2 - C(1,3)*x3)/C(1,1)
