function [x] = equalityLS(A,b,C,d)

#according to
# https://stanford.edu/class/ee103/lectures/constrained-least-squares/constrained-least-squares_slides.pdf
# http://www.seas.ucla.edu/~vandenbe/133A/lectures/cls.pdf

x_exact = pseudoinverse(C)*d;

C_z = C';
d_z = A'*b - A'*A;;

z = pseudoinverse(C_z)*d_z;

if(isempty(z) == false)
x = x_exact;
endif


endfunction