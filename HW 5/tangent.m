% Section 001, Problem 3.1.3

% The following program solves the problem of finding a root for of the
% equation tan(x) = x on the intervel [4,5] using the bisection method.
% That is, we find the root of the polynomial f(x) = tan(x) - x over the
% interval [4,5].

f = @(x) tan(x) - x; % the polynomial f we are working with

a = 4; % the initial left endpoint a (note that f(a) < 0)
b = 5; % the initial right endpoint b (chosen because f(b) > 0)

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

% What happens on the interval [1,2]? 

% First, the graph of f(x) has no root in the interval [1,2]. The bisection method 
% will not work as f(x) is discontinuous over [1,2]: there is a vertical 
% asymptote of x = pi/2 ? 1.5708, which is in the interval
% [1,2]. The graph tends to positive infinity when approaching from the 
% left of pi/2 and tends to negative infinity when approaching from the
% right. Performing the bisection method will exhaust the 100 iteration
% limit set and continue halfing the interval [a, b] until it produces an
% output of 355/266, which is not a root.

% Explanation of results for the interval [4,5]: the bisection method obtained an approximation to the  
% root r ? 4.4934 of the polynomial f(x) after 100 iterations of the program. At
% each iteration, the function f was evaluated at c and the sign of f(c)
% was checked in the for loop of the code. After exhausting 100
% itereations, theh function then output the approximated value of the root
% with the fraction 2386/531.