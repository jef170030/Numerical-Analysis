% Section 001, Exercise 2.1.8

% The purpose of this function is to be able to solve an invertible system
% of n linear equations in n unknowns by using the method of naive Gaussian
% elimination. It models the pseudocode provided in the book and will be
% used to solve a given equation Ax = b.


function x = Naive_Gauss_Random(n)
    % Input n: the number of rows or the number of columns of the square n
    % by n matrix A
     
   % Defining the desired matrix A and vector b
   
    A = rand(n);  % creating a random n by n matrix
    j = 1 : n;
    x = j'; % creating the desired solution vector x such that x(j) = j for j = 1 to n
    b = zeros(n, 1); % creating the right hand side vector b (to be filled in)
    
    for i = 1 : n
        b(i) =  dot(A(i, :), x); % defining b to be our desired solution
    end
    
    x = zeros(n, 1);
    
    % Here are the steps for forward elimination:
    
    for k = 1 : n - 1
        for i = k + 1
            xmult = A(i, k)/A(k, k);
            A(i, k) = xmult;
            
            for j = k + 1 : n
                A(i, j) = A(i, j) - (xmult)*A(k, j); % updating matrix A
            end
            
            b(i) = b(i) - (xmult)*b(k); % updating vector b
        end
    end
    x(n) = b(n)/A(n, n); % filling in the nth element of x
    
    % Here are the steps now for back substitution, ie - solving
    % for the remaining elements of x:
    
    for i = n - 1 : -1 : 1
        sum = b(i);
        for j = i + 1 : n
            sum = sum - A(i, j)*x(j);
        end
        x(i) = sum/A(i, i);
    end
end