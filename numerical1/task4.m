A = [0.835 0.667; 0.333 0.266]
b = [0.168; 0.067]

disp(['System matrix:'])
C = [A b]


C(2,:) = C(2,:) - C(1,:) * (C(2,1)./C(1,1));
Cx2 = C(2,3)/C(2,2)
Cx1 = (C(1,3) - C(1,2)* Cx2)/C(1,1)

Ap = [0.835 0.667; 0.333 0.266];
b = [0.168; 0.066];
disp([' '])
disp([' '])
disp(['Small perturbation'])
D = [A b]

D(2,:) = D(2,:) - D(1,:) * (D(2,1)./D(1,1));
Dx2 = D(2,3)/D(2,2)
Dx1 = (D(1,3) - D(1,2)* Dx2)/D(1,1)

disp([' '])
disp(['Condition number of matrix'])
cond(C)
