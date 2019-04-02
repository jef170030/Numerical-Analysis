function temp = eval(n, x(i), a(i), t)

temp = a(n)
for i = n - 1 : -1 : 0
    temp = temp*(t - x(i)) + a(i)
end

end

