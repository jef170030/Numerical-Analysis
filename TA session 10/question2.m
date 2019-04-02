% Write a simple program using the procedure "Coef" that interpolates
% exp(x) by a polynomial of degree 10 on [0, 2] and then compares the
% polynomial to exp(x) at 100 points.

x = 0 : 2/11 : 2;

coef(11, x, exp(x))
