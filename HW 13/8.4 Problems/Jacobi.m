% Section 001, Exercise 8.4.3

% The following algorithms implement different iterative solutions to
% linear systems. The codes will be run using a matrix system Ax = b, and
% the number of iterations will be compared in each case.

function x = Jacobi(a, b, x)
    
    kmax = 100;
    delta = 10e-10;
    eps = .5e-4;
    n = size(a);
    
    for k = 1 : kmax
        y = x;
        
        for i = 1 : n
            sum = b(i);
            diag = a(i,i);
            
            if abs(diag) < delta
                disp('diagonal element is too small')
                return
            end
            
            for j = 1 : n
                if j ~= i
                    sum = sum - a(i,j)*y(j);
                end
            end
            
            x(i) = sum/diag;
        end

        if norm(x - y) < eps
            disp(k)
            return
        end
    end
    
    disp('maximum iterations reached')
    return
end




