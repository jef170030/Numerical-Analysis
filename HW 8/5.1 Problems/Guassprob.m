% Section 001, Problem 5.1.5

% The following program approximates the Gaussian Probability Integral by
% using a function call to "Trapezoid_Uniform". That is, we use the
% composite trapezoid rule with an increasing number of subintervals to
% show that the approximated value of the integral of f converges towards the
% actual value of pi^(1/2)/2, which is produced by lines  -  of the
% code. Note that the use of the upper bound of integration, 100, is
% arbitrary.

format long

f = inline('exp(-x^2)', 'x'); % the integrand
integral1 = Trapezoid_Uniform(f, 0, 100, 50)  % gives a poor approximation
integral2 = Trapezoid_Uniform(f, 0, 100, 100) % using more subintervals
integral3 = Trapezoid_Uniform(f, 0, 100, 1000)% even more subintervals

% Computation of the Guassian Probability Integral using a suitable
% substitution x = - log(t), which gives us an integral with finite bounds.
% The new integrand is the function h(t).

syms t;
h = t^(-log(t))/t;      
actual = int(h, t, 0, 1)


% The following shows the error amounts between the 3 approximations of the integral and
% the actual value of the integral, "actual" :

error1 = abs(vpa(actual - integral1))
error2 = abs(vpa(actual - integral2))
error3 = abs(vpa(actual - integral3))

