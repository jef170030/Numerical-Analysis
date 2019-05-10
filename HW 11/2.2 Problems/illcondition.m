% Section 001, Exercise 8.1.8

% The purpose of this code is to investigate the numerical difficulties in
% inverting the following matrix A. We'll take a look at both it's
% condition number and determinant at first. Then we'll compare it's true
% inverse to the one obtained by using the code for solving the matrix
% system AX = B, as provided for exercise 5.

% Creating the given matrix A:

A = [ -0.0001 5.096 5.101 1.853; 
       0      3.737 3.740 3.392;
       0      0     0.006 5.254;
       0      0     0     4.567];
   
 % The condition number and determinant of A:
 
 kappa = cond(A)
 determinant = det(A)
 
 % Finding the inverse of A using the previous procedure:
 
 B = eye(4);
 X = zeros(4, 4);
 l = 1 : 4;

[Anew, l] = Gauss(4, A, l); 

% Solving for each individual column of X:

for i = 1 : 4
    
    b = B(:, i);
    X(:,i) = Solve(4, Anew, l, b);
    
end

Ainv_approx = X
Ainv = inv(A)
Abs_error = abs(X - inv(A)) % an error matrix