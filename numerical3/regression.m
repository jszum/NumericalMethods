function [x] = regression(A, b)

[m,n] = size(A);

[p,r] = size(b);

if(n != 2 || r != 1)
  #disp(["The matrix does not describe the polynomial of first degree"])

else

  meanY = sum(b)/p;
  meanT = sum(A(:,n))/m;

  #beta = (sum(b.*A(:,n)) - m*meanY*meanT)/(sum(A(:,n).^2) - m * meanT*meanT)
  #alpha = meanY - beta*meanT
  
  #more accurate b calculation
  first = (b.- meanY).*(A(:,n).-meanT);
  second = (b.-meanT).^2;
  beta = sum(first)/sum(second);
  alpha = meanY - beta*meanT;
  
  x = [alpha;beta];
endif
  
endfunction