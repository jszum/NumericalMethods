function [A] = alg_gjrref(A)

[n,m] = size(A);

j = 1;
for i = 1:n
  #a
  while(A(i:n,j) == 0)
    j = j+1;
    
    if(j>m)
      return
    endif
  endwhile
    
  #b
  x = i;
  while(A(i,j)==0)
    x = x + 1;
    if(x>n)
      break;
    endif
    if(A(x,j)!=0)
      temp = A(i,:);
      A(i,:) = A(x, :);
      A(x, :) =  temp;
      break;
    endif
  endwhile
  
  if(A(i,j)==0)
    continue;
  endif
  
  #c
  A(i,:) = A(i,:)/A(i,j);
      
  #d
  for k = 1:n
        if( k == i)
          continue;
        endif
        A(k,:) = A(k,:) - A(i,:)*A(k,j);
  end 
 
end
end

