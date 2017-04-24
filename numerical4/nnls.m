function [x] = nnls(A,b, iterations)

[m,n] = size(A);

AtA = A'*A;
Atb = A'*b;

e = ones(n,1);

xk = ones(n,1);
yk = xk;

completed_iterations = 0;
for i = 1:iterations

  completed_iterations = i;
  
  Xk= diag(xk);
  Yk= diag(yk);
  
  mi = (xk' * yk) ./ (n^2);

  #we have diagonal matrices, so we can spare some time
  Xk_inv = diag(1./xk);
  Xk_sqrt_inv = diag(1./sqrt(xk));
  
  Yk_sqrt = diag(sqrt(yk));
  Yk_sqrt_inv = diag(1./sqrt(yk));

  #taking advantage that sqrt(a*b) = sqrt(a)*sqrt(b)
  Fac1 = [A; Xk_sqrt_inv * Yk_sqrt]; 
  Fac2 = [b - A * Xk * e; Xk_sqrt_inv * Yk_sqrt_inv * mi * e ];
  
  uk = Fac1\Fac2;
  
  vk = -Yk*e + Xk_inv *mi*e - Xk_inv *Yk*uk;
  
  T1 = min(-xk(uk < 0) ./ uk(uk < 0));
  T2 = min(-yk(vk < 0) ./ vk(vk < 0));
  
  #exact book condition
  theta = 0.99995 * max(T1,T2);
  
  #if no further improvemeent, then... break
  if isempty(theta)
    break;
  endif

  xk = xk + theta*uk;
  yk = yk + theta*vk;
end

x = xk;
completed_iterations
endfunction