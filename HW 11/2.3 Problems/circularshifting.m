% Source code for Exercise 6

% Again the majority of this code is simply defining the appropriate
% vectors a, d, c, and b. However this time we have to solve the triangular
% system for 50 different right hand side vectors "b".

n = 50;

a = zeros(n, 1) - 1;
d = zeros(n, 1) + 5;
c = zeros(n, 1) - 1;
B = zeros(n, n); % a matrix whose columns are all desired forms of given b


% Filling in the entries for matrix B
x = 1 : 50;
B(:,1) = x;
for i = 2 : 50
    B(:,i) = circshift(x, 1 - i);
end
    
% Inputting these functions into "Tri" to find the solution x
for j = 1 : 50
    b = B(:, j);
Tri(n, a, d, c, b)
end

