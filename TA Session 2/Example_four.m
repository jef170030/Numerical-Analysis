% Exercise 04 covers functions and help
clear

Text = quadrant(-1, 2) % calls a function from another file in the same directory (quadrant)
% It is a good idea to make function its own file to be able to call it
% from others. That is, nested functions cannot be called from other files.

% Write function and test for input value 8

p = myProduct(8);

function p = myProduct(x) % is our nested function
% Computes the product of integers from 1 to x
% Note that you cannot call a function in the command window if it is
% nested in a script.

p = 1;
for i = 1 : x
    p = p*i;
end
p
end