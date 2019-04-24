n = 5;
m = 4;
l = 1 : n;
s = zeros(n, 1);

A = rand(n, n);
B = rand(n, m);
X = zeros(n, m);

[Anew, l] = Gauss(n, A, l); 

for i = 1 : m
    
    b = B(:, i);
    X(:,i) = Solve(n, Anew, l, b);
    
end

X
