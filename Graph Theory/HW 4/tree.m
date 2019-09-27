Q = [0 0 0 0 0 0 1 0 0 0;
     1 0 0 0 0 0 0 0 0 0;
     0 1 -1 0 -1 0 0 1 0 0;
     -1 0 0 0 0 1 0 0 0 1;
     0 0 0 0 0 -1 -1 0 1 0;
     0 -1 0 0 0 0 0 0 0 0;
     0 0 0 -1 0 0 0 0 0 0;
     0 0 1 0 0 0 0 0 0 0;
     0 0 0 1 1 0 0 0 0 -1;
     0 0 0 0 0 0 0 0 -1 0;
     0 0 0 0 0 0 0 -1 0 0;];
 
 % Part a
 
 L = Q*Q' % The Laplacian matrix L
 l = eig(L) % Eigenvalues of L
 
 % Part b
 
 d = diag(L); % Diagonal elements of L
 A = diag(d) - L % The adjacency matrix A
 s = sum(A); % The degrees of vertices
 S = sort(s, 'descend') % The degree sequence of T
 
Q(10, :) = []; % This is Q without the third row (which represents the vertex of degree 4 in T)
P = inv(Q)
