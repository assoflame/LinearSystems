function [x] = Zeidel(n, h, eps, mu1)
    x = ones(n, 1);

    A = getCoeffs(n, h);
    b = getRightPart(n, h, mu1);
    
    while (max(abs(A * x - b)) > eps)

        for i = 1 : n
            sum = 0;
            for j = 1 : n
                if(i ~= j)
                    sum = sum + -A(i, j) * x(j) / A(i, i);
                end
            end
            sum = sum + b(i) / A(i, i);
            x(i) = sum;
        end

    end

end

