a = [7 3 -1 2;
     3 8 1 -4;
    -1 1 4 -1;
     2 -4 -1 6]; % matrix of coefficients "a"

 xstart = [0; 0; 0; 0]; % arbitrary starting guess vector 
 b = [-1; 0; -3; 1];

w1 = SOR(a, b, xstart, w)
w2 = SOR(a, b, xstart, w)
w3 = SOR(a, b, xstart, w)

x = 
y = 

plot(x,y) % plotting the number of iterations for convergence vs the values of w