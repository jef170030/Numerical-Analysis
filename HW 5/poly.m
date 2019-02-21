% Section 001, Problem 3.1.2

% The following program solves the problem of finding a root for a given
% polynomial in the interval [0,1]. More specifically, it uses the
% bisection method for root-finding for the equation
% 9x^4 + 18x^3 + 38x^2 - 57x + 14 = 0

f = @(x) 9*x^4 + 18*x^3 + 38*x^2 - 57*x + 14; % the polynomial f we are working with

a = .5; % the initial left endpoint a (note f(a) < 0)
b = 1; % the initial right endpoint b (we have f(b) > 0)

for i = 1 : 100 % performing 100 iterations
    
    c = .5*(a + b); % the midpoint "c" of the interval [a, b]
    
    if f(c) == 0       % if the midpoint is the root, then we stop
        break
    elseif f(c) > 0    % if the evaluation of the midpoint "c" is positive, assign c to be our new upper bound
        b = c;
    else
        a = c;         % if the evaluation of the midpoint "c" is negative, assign c to be our new lower bound
    end
end

format rat
disp(c)


% Explanation of results: the bisection method obtained a root
% r = 2/3 of the polynomial f(x) after 51 iterations of the program.  At
% each iteration, the function f was evaluated at c and the sign of f(c)
% was checked in the for loop of the code. At the 52nd iteration, we had
% obtained a root r = 2/3, so we broke out of the for loop and the answer
% 2/3 was displayed.