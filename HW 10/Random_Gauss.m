function b = Random_Gauss(n)
    
    A = rand(n);  % creating a random n by n matrix
    j = 1 : n;
    x = j'; % creating the desired solution vector x
    b = zeros(n, 1); % creating the right hand side vector b (to be filled in)
    
    for i = 1 : n
        b(i) =  dot(A(i, :), x); % defining b to be our desired solution
    end
end

