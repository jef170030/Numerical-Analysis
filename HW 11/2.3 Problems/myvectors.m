% Source code for Exercise 5

% The majority of the following code is defining the vectors a, d, c, and b
% to match those given for this problem. At the end we perform elimination
% on this triangular system using the function "Tri".

n = 100;

a = zeros(n, 1);
d = zeros(n, 1);
c = zeros(n, 1);
b = zeros(n, 1);

% Creating the desired vectors a, d, c, and b
for j = 1 : n
    a(j) = (-1)^(j+1);
    d(j) = 4*((-1)^(j+1));
    c(j) = (-1)^j;
    
    if mod(j, 2) == 1
        b(j) = -20;
    else
        b(j) = 40;
    end
end

% Inputting these functions into "Tri" to find the solution x
Tri(n, a, d, c, b)