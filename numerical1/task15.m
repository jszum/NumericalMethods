 A = [1 0 -1 -1 0 0 0;
      0 1 1 0 -1 0 0;
     -1 0 0 0 1 1 0;
      0 0 -10 10 0   0  10;
      0 0 0  10  0   10 20;
      0 0  0  0  10 -10 10]
 
 disp(['Using gauss-jordan elimination'])
 alg_gjrref(A)