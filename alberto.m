% A solution to program 1.1.2. Feel free to use this code in your homework.
% The purpose of this program is to show how we can output the 
% computations in a 'nice' format.

% To run this program, you can go to the editor tab, and click on run (if
% there is a popup dialog box, hit 'change folder').

format shortG;  % A nice formatting option for tabular output.
format compact; % Changes the output to become single-spaced, as opposed
                % to the default double-spacing format.

clc;            % Clears your console windows so that only the output from
                % this program is visible.

n = 30;         % Number of iterations
x = 0.5;
h = 1;
emin = 1;       % Smallest error in the derivative approximation

% Since we intend to output the iterations as a table, I will first add a
% line so that the reader knows which column corresponds to which variable.
%   Note: the 'disp' function does not support '\t' and '\n', hence we have
%   to manually add whitespace. You can use 'fprintf' if you want these
%   special characters.
disp('          i             h           y         error');

for i = 1:n
    h = 0.25 * h;
    y = (sin(x+h) - sin(x)) / h;
    error = abs(cos(x) - y);
    
	% After computing i, h, y and error, we store these four variables in
    % a 1×4 vector called 'output',
    output = [i, h, y, error];
    
    % and then the 'disp' command prints the variables to the console in
    % a nice format.
    disp(output);
    
    if (error < emin)
        emin = error;
        imin = i;
    end
end

% Finally, we output the 'imin' and 'emin' variables.
disp('imin is'); disp(imin);
disp('emin is'); disp(emin);