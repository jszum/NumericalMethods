function [x] = svdLS_underdetermined(A,b) 

[m,n] = size(A); 

[u,s,v] = svd(A); 
v = v'

x = (s*v) \ (u'*b);
endfunction
