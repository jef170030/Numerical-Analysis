% Section 001, Problem 4.2.2 part a

% The objective of this program is to find a 20'th degree interpolating
% polynomial p(x) using two sets of different Chebyshev nodes for the function 
% f(x) = (x^2 + 1)^(-1) on the interval [-5, 5]. Then using 41 equally-spaced
% points in the same interval of [-5, 5], we'll observe the values of 
% f(x) and p(x), and their discrepancy.

i = 1:20;
x = 5*cos((2*i+1)*pi/42); % these are Chebyshev node points
y = 1./(x.^2 + 1); % evaluating the runge function at each of these points
p = polyfit(x, y, 20); % determines the coefficients of the interpolating polynomial
                       % Note: these coefficients fully determine our
                       % interpolator p(x), which equals p(1)*x^20 +
                       % p(2)*x^19 + ... + p(20)*x^1 + p(21).

% Now we evaluate the original function f(x) and the polynomial fit p(x) on
% a finer grid of 41 points.

x1 = linspace(-5, 5, 41); % now consider 41 equispaced points in [-5, 5]
y1 = 1./(x1.^2 + 1); % function evaluations f(x) at each of the 41 points
f1 = polyval(p, x1); % evaluation of the polynomial p(x) at the 41 points

% Let's plot both the function and polynomial values in the interval [-5,5], 
% with the points used to obtain the polynomial fit highlighted as circles.

figure
plot(x,y,'o')
hold on
plot(x1,y1)
plot(x1,f1,'r--')
legend('y','y1','f1')


% Now we print the values of f(x) and p(x) and observe their discrepancy.
format shortG;
format compact;

T = table(x1',y1',f1',y1'-f1','VariableNames',{'x1','y1','f1','FitError'})

% Explanation of results: So we see that the interpolating polynomial
% p(x)(which I have called f1 in my table) better fits the runge function.
% It is not as dramatically oscillatory nor is it negative. Also, the errors are
% more consistent between each other at each x-value in the interval.
% Overall, it is a better fit of the data for these reasons.