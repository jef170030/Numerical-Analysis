function temp = peval(n, x, a, t)

temp = a(n + 1);
for i = n - 1 : -1 : 0
    temp = temp*(t - x(i + 1)) + a(i + 1);
end
end

