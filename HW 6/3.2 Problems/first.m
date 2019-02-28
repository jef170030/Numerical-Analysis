% Section 001, Problem 3.2.1

% The purpose of this code is to approximate the root of two 
% real-valued functions f and g with an initial guess of 2. This program
% uses Newton's method and prints each iterate along with 
% its accompanied function value

fx = @(x) tan(x) - x;
gx = @(x) e^x - sqrt(x+9);
x0 = 2; % initial guess