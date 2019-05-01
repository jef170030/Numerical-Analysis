function x = SOR(a, b, x, w)
    
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
                return
            end
            
            for j = 1 : i - 1
                sum = sum - a(i,j)*x(j);
            end
            
            for j = i + 1 : n
                sum = sum - a(i,j)*x(j);
            end
            
            x(i) = sum/diag;
            x(i) = w*x(i) + (1 - w)*y(i);
        end
        
        if norm(x - y) < eps
            disp(k)
            return
        end
    end
    
    disp('maximum iterations reached')
    return
end


