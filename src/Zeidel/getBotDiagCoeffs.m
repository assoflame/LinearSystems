function [coeffs] = getBotDiagCoeffs(n, h)
    coeffs = zeros(1, n - 1);
    
    for i = 1 : n - 1
        coeffs(i) = -a(i, h);
    end

end

