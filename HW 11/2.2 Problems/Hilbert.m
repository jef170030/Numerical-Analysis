for n = 2 : 4 : 15
    
    a = zeros(n, n);
    l = 1 : n;
    
    for i = 1 : n
        for j = 1 : n
            a(i, j) = (i + j - 1)^(-1);
        end
        b(i) = sum(a(i,:));
    end
    
    [a, l] = Gauss(n, a, l);
    x = Solve(n, a, l, b)
    
end