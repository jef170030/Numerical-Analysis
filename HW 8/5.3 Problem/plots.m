% x = 0 : .1 : 1;
% y = 1./(1 + x.^2);
% plot(x, y)
 
 x = 0 : .1*(1/sqrt(2)) : 1/sqrt(2);
 y = sqrt(1 - x.^2) - x;
 plot(x, y)
 