A = [0.0001 1; 1 1 ]
b = [1;2]

NP = [A, b]
WP = [A, b]

#no pivoting
NP(2,:) = NP(2,:) - 1e4*NP(1,:)
x2 = round(NP(2,3)/NP(2,2))
x1 = (NP(1,3) - NP(1,2))/NP(1,1)


#with pivoting
WP = exchange(WP,1,2)
WP(2,:) = WP(2,:) - 1e-4*WP(1,:)
x2p = round(WP(2,3)/WP(2,2))
x1p = (WP(1,3) - WP(1,2))/WP(1,1)