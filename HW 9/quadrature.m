% Section 001, Exercise 5.4.1

% The function of this program is to provide a quadrature rule derived from 
% a general formula seen in the book (Formula 8, page 243). It uses the appropriate
% given weights of A0 = 5/9 = A2 and A1 = 8/9 and function evaluations of the 
% integrand f  at the nodes -sqrt(3/5), 0, and sqrt(3/5). This is used to 
% approximate the value of the integral of f over the interval [a, b].

function myintegral = quadrature(f, a, b)
    % input f: integrand (function)
    % input a: lower bound of integration
    % input b: upper bound of integration
    
    j = (a + b)/2 - sqrt(3/5)*(b - a)/2;
    k = (a + b)/2;
    l = (a + b)/2 + sqrt(3/5)*(b - a)/2;
    
    myintegral = ((b - a)/18)*(5*f(j) + 8*f(k) + 5*f(l))
        
end

