% Example 02 covers if statements and text output
clear % to clear all variables that might still be in the workspace

% if/else to round a rand number between 0 and 1
% The following is a coin flip example
x = rand;
if x >= 0.5
    x = 1; 
    t = 'Heads';
else
    x = 0;
    t = 'tails';
end
disp(t) % or just "t" without a semicolon will display x in the command window

% text = 'Hello World!' % is how text is done in Matlab
