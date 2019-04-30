function x = Gauss_Seidel(a, b, x)
    
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
            end
            
            for j = 1 : i - 1
                sum = sum - a(i,j)*x(j);
            end
            
            for j = i + 1 : n
                sum = sum - a(i,j)*x(j);
            end
            
            x(i) = sum/diag;
        end
        
        if norm(x - y) < eps
            disp(k)
        end
    end
    
    disp('maximum iterations reached')
end



