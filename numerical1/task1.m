A = [2 -1 0 0; -1 2 -1 0; 0 -1 2 -1; 0 0 -1 2];
b = [0; 0; 0; 5];
C = [A, b];

# basic operations to achieve upper triangular form
C = exchange(C, 1, 2);

C(2,:) = C(2,:) + 2*C(1,:);

C = exchange(C,2,3);
C(3,:) = C(3,:) + 3*C(2,:);

C = exchange(C,3,4);
C(4,:) = C(4,:) + 4*C(3,:);


#hand-made backsubstitution
x4 = z = C(4,5)/C(4,4);
x3 = w = (C(3,5) - C(3,4)*x4)/C(3,3);
x2 = v = (C(2,5) - C(2,3)*x3 - C(2,4)*x4)/C(2,2);
x1 = u = (C(1,5) - C(1,2)*x2 - C(1,3)*x3 - C(1,4)*x4)/C(1,1);
u
v 
w 
z
