function [b] = getRightPart(n, h, mu1)
    b = zeros(1, n);

    b(1) = 1/2 * h^2 * f(0)- h * mu1 * p(0);
    
    for i = 2 : n
        b(i) = f((i - 1) * h) * h^2;
    end
    
    b = b';
end

