% Section 001, Exercises 2.3.5 and 2.3.6

% The following is an algorithm for solving n linear equations in n unknowns
% for a tridiagonal system. We are to implement a version of the pseudocode
% provided in the book to solve the systems provided by exercises 5 and 6.
% They differ in their input vectors (and sizes), and their respective
% source code and outputs will be placed below

function x = Tri(n, a, d, c, b)
    % Input a: the subdiagonal array
    % Input d: the diagonal array
    % Input c: the superdiagonal array
    % Input b: the right hand side solution vector
    
    % Forward elimination:
    for i = 2 : n
        xmult = a(i - 1)/d(i - 1);
        d(i) = d(i) - (xmult)*c(i - 1);
        b(i) = b(i) - (xmult)*b(i - 1);
    end
    
    x(n) = b(n)/d(n);
    
    % Back substitution:
    for i = n - 1 : -1 : 1
        x(i) = (b(i) - c(i)*x(i + 1))/d(i);
    end
end

