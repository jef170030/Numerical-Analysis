% The following functions "Gauss" and "Solve" closely follow the pseudocode
% provided in the book for solving a system of n linear equations in n
% unknowns using Gaussian elimination with scaled partial pivoting. "Gauss"
% performs the forward elimination phase, while "Solve" performs back
% substitution to obtain the solution vector x. These algorithms will then
% be used on different systems in exercises 4, 5, and 6.


function [a,l] = Gauss(n, a, l) % we care about two outputs a and l
    % input n: number of rows or columns or the matrix a
    % input a: the matrix of coefficients
    % input l: the index array   
    % note: the vector is called our scale vector
    
% Forward elimination:

for i = 1 : n
    l(i) = i;
    smax = 0;
    
    for j = 1 : n
        smax = max(smax, abs(a(i, j))); % finding the maximum such element
                                        % to input as s(i)
    end
    s(i) = smax;
end

for k = 1 : n - 1
    rmax = 0;
    
    for i = k : n
        r = abs(a(l(i), k)/s(l(i)));
        
        if r > rmax
            rmax = r;
            j = i;
        end
    end
    l([j, k]) = l([k, j]); % swapping the i'th and k'th elements of the index vector l
    
    for i = k + 1 : n
        xmult = a(l(i), k)/a(l(k), k);
        a(l(i), k) = xmult;
        
        for j = k + 1 : n
            a(l(i), j) = a(l(i), j) - (xmult)*a(l(k), j);
        end
    end
end

clear s
end

