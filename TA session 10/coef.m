function cat = coef(n, x, y, a)

for i = 1 : n
    a(i) = y(i);
end
for j = 1 : n
    for i = n : -1 : j
        a(i) = (a(i) - a(i - 1))/(x(i) - x(i-j);
    end
end
end

