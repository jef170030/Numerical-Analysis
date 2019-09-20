Q = [-1 0 0 0 0 0 0 0 0 0 0 0 0 -1;
     0 0 -1 0 0 0 0 0 0 0 0 0 0 0;
     0 1 0 0 0 -1 0 0 0 0 0 0 0 0;
     0 0 0 1 0 0 0 0 0 -1 0 0 0 0;
     0 0 1 0 0 0 -1 0 0 0 -1 0 -1 0;
     1 0 0 0 0 0 0 1 0 1 0 0 0 0;
     0 0 0 0 -1 0 0 0 1 0 0 0 0 0;
     0 0 0 0 0 0 0 0 0 0 1 0 0 0;
     0 0 0 -1 0 0 0 -1 0 0 0 0 0 0;
     0 0 0 0 1 0 0 0 0 0 0 -1 0 0;
     0 0 0 0 0 0 1 0 0 0 0 0 0 0;
     0 0 0 0 0 1 0 0 0 0 0 1 0 0;
     0 0 0 0 0 0 0 0 0 0 0 0 1 0;
     0 -1 0 0 0 0 0 0 -1 0 0 0 0 0;
     0 0 0 0 0 0 0 0 0 0 0 0 0 1];
 
 % Part A
 
 L = Q*Q';
 eig(L);
 
 % Part B
 
    % The number of connected components of G is 3. This coincides with the
    % multiplicity of the eigenvalue 0. I conjecture that the number of
    % connected components of a a simple oriented graph G is equal to the
    % multiplicity of the zero eigenvalue of its Laplacean matrix.
 