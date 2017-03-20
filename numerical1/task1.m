A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2];
b = [0; 0; 0; 5];
C = [A, b];

# basic operations to achieve upper triangular form
C
disp(['R1 <-> R2'])
C = exchange(C, 1, 2)

disp(['R2 = R2 + 2R1'])
C(2,:) = C(2,:) + 2*C(1,:)

disp(['R2 <-> R3'])
C = exchange(C,2,3)
disp(['R3 = R3 + 3R2'])
C(3,:) = C(3,:) + 3*C(2,:)

disp(['R3 <-> R4'])
C = exchange(C,3,4)
disp(['R4 = R4 + 4R3'])
C(4,:) = C(4,:) + 4*C(3,:)


#hand-made backsubstitution
x4 = z = C(4,5)/C(4,4);
x3 = w = (C(3,5) - C(3,4)*x4)/C(3,3);
x2 = v = (C(2,5) - C(2,3)*x3 - C(2,4)*x4)/C(2,2);
x1 = u = (C(1,5) - C(1,2)*x2 - C(1,3)*x3 - C(1,4)*x4)/C(1,1);

disp(['After backsubstitution'])
u
v 
w 
z

#and check with written gaussian elimination and backsubstitution
disp(['And result check'])
D = gaussian_elim([A,b]);
x = backsub(D)