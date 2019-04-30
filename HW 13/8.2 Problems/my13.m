% Section 001, Exercise 8.3.13

% The purpsoe of this script is to find the eigenvalues, singluar values,
% and condition number of the matrix B. These will be computed using
% built-in Matlab functions and their values will be displayed below.

B = [-149 -50 -154; 537 180 546; -27 -9 -25];
eigenvalues = eig(B)
singular_values = svd(B)
kappa = cond(B)
