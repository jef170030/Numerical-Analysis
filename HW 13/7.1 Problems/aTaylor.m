% Section 001, Exercise 7.1.2a/b (EXTRA CREDIT)

% The purpose of the following sections of code is to use a Taylor series method of
% order 3 to approximate the solution x(t) of an ordiniary differential
% equation with an initial value x(0) at an endpoint b of [a,b]. The
% information about the specific differential equation is initialized
% before the for loop, and the derivatives of x are defined in the for loop

a = 0; % left endpoint
b = .9; % right endpoint
n = 90; % number of subintervals
x = 1; % initial value
h = (b - a)/n; % step value
t = a;

for k = 1 : n
    x1 = t + x^2;
    x2 = 1 + 2*x*x1;
    x3 = 2*x1*x1 + 2*x*x2;
    x = x + h*(x1 + (1/2)*h*(x2 + (1/3)*h*(x3)));
    t = a + k*h;
end

disp(x)

