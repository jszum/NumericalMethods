function [R] = alg_rref(A)

[n,m] = size(A);

j = 1
for i = 1:n
  if(A(:,j) == 0)
    j = j+1
    
    if(j>m)
      return
    endif
  endif
    
  tmp_i = i;
  while(A(i,j)==0)
    tmp_i = tmp_i + 1;
    temp = A(i,:);
    A(i,:) = A(i+1, :);
    A(i+1, :) =  temp;
  endwhile
  
  A(i,:) = A(i,:)/A(i,j)
      
  for k = 1:n

  endif  
 
 endif

