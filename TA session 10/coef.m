function a = coef(n, x, y)

a = zeros(n + 1, 1);

for i = 0 : n
    a(i + 1) = y(i + 1);
end
for j = 1 : n
    for i = n : -1 : j
        a(i) = (a(i) - a(i - 1))/(x(i) - x(i - j));
    end
end
end

