function [coeffs] = getMainDiagCoeffs(n, h)
    coeffs = zeros(1, n);
    
    coeffs(1) = a(1, h) + 1/2 * h^2 * q(0);

    for i = 2 : n
        coeffs(i) = a(i - 1, h) + a(i, h) + h^2 * q((i - 1) * h);
    end

end

