%n = 5;
%m = 4;
%l = 1 : n;
%s = zeros(n, 1);

%A = rand(n, n);
%B = rand(n, m);
%X = zeros(n, m);

n = 2;
m = 2;
l = 1:n;

A = [1 2; 4 2];
B = eye(2);


for i = 1 : m
    
    b = B(:, i);
    [A, l] = Gauss(n, A, l); 
    X(:,i) = Solve(n, A, l, b);
    
end

X
