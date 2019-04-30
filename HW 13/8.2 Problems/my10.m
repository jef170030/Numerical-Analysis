% Section 001, Exercise 8.2.10a/b

% The purpose of this script is to compute the the singular value
% decomposition of the given matrices using the built-in MATLAB command
% "svd". The associated matrices U, S, and V are computed and then 
% multiplied to see if their product equals the original matrix.

% a.

%A = [1 1; 0 1; 1 0]; % the given matrix
%[U,S,V] = svd(A) % computing the singular value decomposition
%p = round(U*S*V',1) % the product U*S*V', rounded to check for equavalence
%A == p % checking equivalence between A and its decomposition, named "p"

%S = U'*A*V


% b.

B = [1 3 -2; 2 7 5; -2 -3 4; 5 -3 -2]; % the given matrix
[U,S,V] = svd(B) % computing the singular value decomposition
q = round(U*S*V',1) % the product U*S*V', rounded to check for equavalence
B == q % checking equivalence between B and its decomposition, named "q"


S = U'*B*V

