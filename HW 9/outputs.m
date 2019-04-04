% Section 001, Exercise 5.4.2

% The function of this code is to test different integrands and bounds of
% integration against the 3-point Gaussian quadrature algorithm provided by
% the function "quadrature". That is, we wish to approximate the integrals
% of different functions f over different bounds of integration.

% 2a. We are given the following function f1 with bounds a = 0 and b = 1:

f1 = inline('1/sqrt(x)', 'x');
answer1 = quadrature(f1, 0, 1)

% 2b. We now approximate the integral of f2 over the interval [0, 2]:

f2 = inline('exp(-cos(x)^2)', 'x');
answer2 = quadrature(f2, 0, 2)