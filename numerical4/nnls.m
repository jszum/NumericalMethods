function [x] = nnls(A,b, iterations)

[m,n] = size(A);

AtA = A'*A;
Atb = A'*b;

I = eye(n);
e = ones(n,1);


tolerance_1 = n*eps;
tolerance_2 = n*sqrt(eps);

xk = ones(n,1);;
yk = xk;


for i = 1:iterations

  mk = (xk'*yk)./(n^2);
  Xk= diag(xk);
  Yk= diag(yk);
  Xk_inv = diag(1./xk);
  Xk_sqrt_inv = diag(1./sqrt(xk));
  Yk_sqrt = diag(sqrt(yk));
  Yk_sqrt_inv = diag(1./sqrt(yk));


  C = [A; Xk_sqrt_inv * Yk_sqrt];
  d = [b-A*Xk*e; Xk_sqrt_inv * Yk_sqrt_inv *mk*e ];
  uk = C\d;
  vk = -Yk*e + Xk_inv *mk*e - Xk_inv *Yk*uk;
  T1 = min(-xk(uk < 0) ./ uk(uk < 0));
  T2 = min(-yk(vk < 0) ./ vk(vk < 0));
  theta = 0.99995 * min(T1,T2);
  
  if isempty(theta)
    break;
  endif
  
  xk = xk + theta*uk;
  yk = yk + theta*vk;
  if (xk'*yk < tolerance_1) and (norm(AtA*xk-Atb-yk) < tolerance_2)
    break;
  endif
end
x = xk;
y = yk;
endfunction