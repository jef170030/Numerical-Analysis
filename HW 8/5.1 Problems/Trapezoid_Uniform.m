% Section 001, Problem 5.1.1

% The following program is a generalized script that approximates the
% integral of a function f(x) on a interval [a, b] using the composite
% trapezoid rule with n equal subintervals.

function integral = Trapezoid_Uniform(f, a, b, n)
    % Input f: integrand (a function)
    % Input a: lower bound of integration
    % Input b: upper bound of integration
    % Input n: number of subintervals
    
    h = (b - a)/n; % spacing (or width) of subinterval 
    s = .5*(f(a) + f(b)); % evaluation of endpoints, which takes place once
    
    for i = 1 : n - 1
        x = a + i*h;
        s = s + f(x);
    end
    
    integral = s*h;
end
