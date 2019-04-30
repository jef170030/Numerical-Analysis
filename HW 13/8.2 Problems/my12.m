% Section 001, Exercise 8.2.12a-c

% The purpose of this script is to again find the singular value
% decomposition of given matrices (of different sizes). The product U*S*V'
% is compared with the original matrix for equivalence in each case.

% a.

A = [2 1 -2]; % the given matrix
[U,S,V] = svd(A) % computing the singular value decomposition
p = round(U*S*V',1) % the product U*S*V', rounded to check for equavalence
A == p % checking equivalence between A and its decomposition, named "p"


% b.

format long

r = -5/2 + 3*sqrt(3);
s = (5/2)*sqrt(3) + 3;
B = [r s]; % the given matrix
[U,S,V] = svd(B) % computing the singular value decomposition
Bnew = round(B, 3)
q = round(U*S*V',3) % the product U*S*V', rounded to check for equavalence
Bnew == q % checking equivalence between Bnew, a rounded version of B, and 
          % q, a rounded version of the product U*S*V'

% c.

C = [2 2 2 2; 17/10 1/10 -17/10 -1/10; 3/5 9/5 -3/5 -9/5]; % the given matrix
[U,S,V] = svd(C) % computing the singular value decomposition
t = round(U*S*V',1) % the product U*S*V', rounded to check for equavalence
C == t % checking equivalence between A and its decomposition, named "p"
