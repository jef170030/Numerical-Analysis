% Section 001, Problem 1.1.20

% The function of the program that follows is to demonstrate different
% types of numbers in MATLAB as they correspond to output values. It solves
% the problem of oversights in assignment statements by showing possible
% discrepancies in values x and y. That is to say, instances when x and y
% are equal and instances when x and y are not equal due to type.


%In this example, MATLAB reports x and y that are equal
format long
x1 = 3/3

format rational
y1 = 3/3

z1 = 3/3 - 1 % This is the difference y1 - x1 using their respective outputs
             % as MATLAB would show them.


% Meanwhile in this example, MATLAB reports x and y that are not equal
format long
x2 = 4/3

format rational
y2 = 4/3

z2 = 4/3 - 1.333333333333333 % This difference y2 - x2 as a nonzero number
                             % is the result of truncation that would occur
                             % due to the formatting of x2 = 4/3 as a
                             % truncated decimal.
                             
% A vectorized output in the display (command) window was not suitable as
% it did not show the result of truncation in z2 (it simply displayed a "*"
% symbol in its place. hence, the outputs have not been suppressed so that
% they would appear when the code was run.
