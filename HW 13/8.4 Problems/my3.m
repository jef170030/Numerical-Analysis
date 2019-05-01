a = [7 3 -1 2;
     3 8 1 -4;
    -1 1 4 -1;
     2 -4 -1 6];

 xstart = [0; 0; 0; 0]; % arbitrary starting guess vector 
 b = [-1; 0; -3; 1];
 w = 1.4; % relaxation factor
 
 xj = Jacobi(a, b, xstart);
 xgs = Gauss_Seidel(a, b, xstart);
 xsor = SOR(a, b, xstart, w);