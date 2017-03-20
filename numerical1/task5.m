A = [2 1 2; 1 2 3; 4 1 2]
I = [1 0 0; 0 1 0; 0 0 1]

disp(['System matrix:'])
C = [A I]

disp(['R2 - (a21)/(a11) R1'])
C(2,:) = C(2,:) - (C(2,1)/C(1,1)) * C(1,:)

disp(['R3 - (a31)/(a11) R1'])
C(3,:) = C(3,:) - (C(3,1)/C(1,1)) * C(1,:)

disp(['R1 - (a12)/(a22) R2'])
C(1,:) = C(1,:) - (C(1,2)/C(2,2)) * C(2,:)

disp(['R3 - (a32)/(a22) R2'])
C(3,:) = C(3,:) - (C(3,2)/C(2,2)) * C(2,:)

disp(['R1 - (a13)/(a33) R3'])
C(1,:) = C(1,:) - (C(1,3)/C(3,3)) * C(3,:)

disp(['R2 - (a23)/(a33) R3'])
C(2,:) = C(2,:) - (C(2,3)/C(3,3)) * C(3,:)

disp([' '])
disp(['R1 / a11'])
C(1,:) = C(1,:)/C(1,1)
disp(['R2 / a22'])
C(2,:) = C(2,:)/C(2,2)
disp(['R3 / a33'])
C(3,:) = C(3,:)/C(3,3)

invC = C(:,4:6)

check = inv(A)