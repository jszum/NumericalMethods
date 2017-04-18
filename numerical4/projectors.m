function [Pra, Prah, Pna, Pnah] = projectors(A)

[m,n] = size(A);

Pra = A * pseudoinverse(A);
Prah = pseudoinverse(A) * A;

Pnah = eye(size(Pra)) - Pra;
Pna = eye(size(Prah)) - Prah;

endfunction