% Section 001, Problem 1.4.6

% The following program solves the problem of computing values of the
% function f(x) = sin(x) - 1 + cos(x) to nearly full machine precision for
% all x in the closed interval [0, pi/4]. Its function is to minimize
% possible loss of significance incurred by the computer's computations.

format long

f(x) = sin(x) - 1 + cos(x)
