function [x] = refinement(A,x,b,it)

for s = 1:it
  r = b - A*x
  
  #extended refinement
  delta = qrLS(A,r);
  x = x + delta
endfor

endfunction