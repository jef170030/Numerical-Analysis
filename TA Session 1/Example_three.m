% Example 03 covers vectors and for loops
clear

x = [2 3 5 7]
y = 1 : 4
z = 2 : 2 : 10
s = x + y % adds component-wise the elemens of x and y
z = 2*z
z = z/2
% z = z^2 doesn't make sense as this means multiply z by itself

% To square easch element of vector z, do the following:
z = z.^2
z = z' % transposes a matrix
x = [2; 3; 4; 7] % is a way to represent a column vector

% To reference one element of a vector, do the following:
x(2) % grabs the second entry from the vector x
x(2:4) % will give us the second, third, and fourth entry of x