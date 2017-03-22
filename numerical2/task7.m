A1 = [-2 -1 0; 2 0 0; 0 0 2]
[l,v] = iterqr_shift(A1,100);
l
#Gershg(A1)
A2 = [5 1 1; 0 6 1; 0 0 -5]
[l,v] = iterqr_shift(A2,100);
l
#Gershg(A2)
A3 = [5.2 0.6 2.2; 0.6 6.4 0.5; 2.2 0.5 4.7]
[l,v] = iterqr_shift(A3,100);
l
Gershg(A3)
