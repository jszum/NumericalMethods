A =[1 2 2 3 1;
    2 4 4 6 2;
    3 6 6 9 6;
    1 2 4 5 3];
    
Am =[1 2 2 3 1;
    0 4 4 6 2;
    3 6 6 9 6;
    1 2 4 5 3];
    
x = [1 0 1 1 0]'

b = A*x
bm = Am*x

x1 = focuss(A,b,0.5,1e-6)
error_x1 = norm(b- A*x1)

x1m = focuss(Am,bm, 0.5, 1e-6)
error_x1m = norm(bm-Am*x1m)