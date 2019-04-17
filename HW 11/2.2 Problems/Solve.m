function x = Solve(n, a, l, b)
    % input n: number of rows or columns or the matrix a
    % input a: a reduced matrix of coefficients (after forward elimination)
    % input l: the index array (perhaps different from original vector l)   
    % input b: the right hand side vector b
    
for k = 1 : n - 1
    for i = k + 1 : n
        b(l(i)) = b(l(i)) - a(l(i), k)*b(l(k));
    end
end

x(n) = b(l(n))/a(l(n), n);

for i = n - 1 : -1 : 1
    sum = b(l(i));
    
    for j = i + 1 : n
        sum = sum - a(l(i), j)*x(j);
    end
    
    x(i) = sum/a(l(i), i);
end
end

