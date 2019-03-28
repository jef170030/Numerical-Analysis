% Section 001, Problem 5.3.1

% The following program is an apadtive procedure for Simpson's rule for
% numerical integration. It takes in as its inputs a function and bounds of
% integration, among other parameters

function integral = Simpson(f, a, b, delta, level, level_max)

level = level + 1;
h = b - a;
c = (a + b)/2;
one_simpson = h*(f(a) + 4*f(c) + f(b))/6;
d = (a + c)/2;
e = (c + b)/2;
two_simpson = h*(f(a) + 4*f(d) + 2*f(c) + 4*f(e) + f(b))/12;

if level >= level_max
    integral = two_simpson;
    disp('maximum level reached')
    
else
    if abs(two_simpson - one_simpson) < 15*delta
        integral = two_simpson + (two_simpson - one_simpson)/15;
    else
        left_simpson = Simpson(f, a, c, delta/2, level, level_max);
        right_simpson = Simpson(f, c, b, delta/2, level, level_max);
        integral = left_simpson + right_simpson;
    end
end    
end
