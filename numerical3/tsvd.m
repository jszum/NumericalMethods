function [x] = tsvd(A,b, it)

[u,s,v] = svdqr(A,it);

c = u'*b

r = rank(A)

x=zeros(size(A,2),1);

for i = 1:r

  x = x + (c(i)*v(:,i))/s(i,i);
  
endfor

endfunction