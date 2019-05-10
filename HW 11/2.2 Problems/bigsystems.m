% Section 001, Exercise 8.1.5

% The purpose of this exercise is to write a procedure that will solve the
% system of matrix equations AX = B. It uses a previously written algorithm
% for Gaussian elimination with scaled partial pivoting to solve for each
% column of the solution matrix X one at a time. The procedure is tested on
% a few different cases, and in each case the "rand" function is used on
% matrices A and B to obtain matrices with random elements.


% Case 1: n ? m

n = 5; 
m = 4;
l = 1 : n;
s = zeros(n, 1);

A = rand(n, n);
B = rand(n, m);
X = zeros(n, m);

[Anew, l] = Gauss(n, A, l); 

% Solving for each individual column of X:

for i = 1 : m
    
    b = B(:, i);
    X(:,i) = Solve(n, Anew, l, b);
    
end

X

clear

% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ %

% Case 2: n = m

n = 6;
m = 6;
l = 1 : n;
s = zeros(n, 1);

A = rand(n, n);
B = rand(n, m);
X = zeros(n, m);

[Anew, l] = Gauss(n, A, l); 

% Solving for each individual column of X:

for i = 1 : m
    
    b = B(:, i);
    X(:,i) = Solve(n, Anew, l, b);
    
end

X

clear

% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ %

% Case 3: n = m and B = I

n = 5;
m = 5;
l = 1 : n;
s = zeros(n, 1);

A = rand(n, n);
B = eye(n, m);
X = zeros(n, m);

[Anew, l] = Gauss(n, A, l); 

% Solving for each individual column of X:

for i = 1 : m
    
    b = B(:, i);
    X(:,i) = Solve(n, Anew, l, b);
    
end

X             % should be equal to the inverse of the matrix A
Ainv = inv(A) % checking to see what inv(A) is