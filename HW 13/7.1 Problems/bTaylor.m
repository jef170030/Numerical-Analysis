a = 1; % left endpoint
b = 1.75; % right endpoint
n = 75; % number of subintervals
x = 1; % initial value
h = (b - a)/n; % step value
t = a;

for k = 1 : n
    x1 = x - t;
    x2 = x1 - 1;
    x3 = x2;
    x = x + h*(x1 + (1/2)*h*(x2 + (1/3)*h*(x3)));
    t = a + k*h;
end

disp(x)