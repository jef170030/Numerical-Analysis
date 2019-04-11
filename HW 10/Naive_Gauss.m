% Section 001, Exercise 2.1.3

% The purpose of this function is to be able to solve an invertible system
% of n linear equations in n unknowns by using the method of naive Gaussian
% elimination. It models the pseudocode provided in the book and will be
% used to solve a given equation Ax = b.


function x = Naive_Gauss(n)
    % Input n: the number of rows or the number of columns of the square n
    % by n matrix A
    % Input A: the matrix of coefficients
    % Input b: the right hand side vector
     
   A = zeros(n, n); % creating a n by n matrix which will be filled in
   b = zeros(n, 1); % creating a n by 1 column vector, also to be filled in
   x = zeros(n, 1); % the last vector we need filled in - the solution vector
   
   % Defining the desired matrix A and vector b
   
    for i = 1 : n
        b(i) = i + 1;
        for j = 1 : n
            A(i, j) = i + j;
        end
    end
    
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