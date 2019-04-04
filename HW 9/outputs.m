% Section 001, Exercise 5.4.2

% The function of this code is to test different integrands and bounds of
% integration against the 3-point Gaussian quadrature algorithm provided by
% the function "quadrature". That is, we wish to approximate the integrals
% of different functions f over different bounds of integration.

format long

% 2a. We are given the following function f1 with bounds a = 0 and b = 1:

f1 = inline('1/sqrt(x)', 'x');
approximate1 = quadrature(f1, 0, 1)

% Here is the actual value:

syms x
real1 = vpaintegral(1/sqrt(x), 0, 1)

% Hence the error for 2a is:
error1 = real1 - approximate1

% 2b. We now approximate the integral of f2 over the interval [0, 2]:

f2 = inline('exp(-cos(x)^2)', 'x');
approximate2 = quadrature(f2, 0, 2)

% The vpa function reports 

syms x
real2 = vpaintegral(exp(-cos(x)^2), 0, 2)

% Hence we have an error of
error2 = real2 - approximate2
