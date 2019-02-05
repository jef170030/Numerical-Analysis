% Example 03 covers vectors and for loops
clear % will immediately clear out the workspace upon running code

x = [2 3 5 7] % square brackets is the convention for vectors
y = 1 : 4
z = 2 : 2 : 10 % the second element is the "spacing" or "step"
s = x + y % adds component-wise the elemens of x and y
z = 2*z
z = z/2
% z = z^2 doesn't make sense as this means multiply z by itself

% To square easch element of vector z, do the following:
% z = z.^2
% z = z' % transposes a matrix
% x = [2; 3; 4; 7] % is a way to represent a column vector

% To reference one element of a vector, do the following:
x(2) % grabs the second entry from the vector x
x(2:4) % will give us the second, third, and fourth entry of x

for i = x % we can put any vector here, and Matlab will loop over it
    s = i;
end
s % putting the "s" here outside the loop will simply display its last value

% This code adds the integers from 0 to 128 inclusive
sum = 0;
for i = 1 : 128
    sum = sum + i;
end
sum



