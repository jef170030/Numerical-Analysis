% Section 001, Problem 1.4.6

% The following program solves the problem of computing values of the
% function f(x) = sin(x) - 1 + cos(x) to nearly full machine precision for
% all x in the closed interval [0, pi/4]. Its function is to minimize
% possible loss of significance incurred by the computer's computations.

clc

format long

p = Precision(2);

function f = Precision(x)
    % Computes machine-precise values for the expression sin(x) - 1 + cos(x)
    
    f(x) = sin(x) - 2*(sin(x/2))^2; % this is the function obtained
                                    % using a trigonometric identity and 
                                    % rearranging accordingly
end

