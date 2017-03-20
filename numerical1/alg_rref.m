function [A] = alg_rref(A)

[n,m] = size(A);

j = 1;
for i = 1:n

  x = i
  while(A(i,j)==0)
  A(i,j)
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
  

end

end

