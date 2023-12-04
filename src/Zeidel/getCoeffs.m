function [A] = getCoeffs(n, h)
    A = zeros(n, n);
    mainDiagCoeffs = getMainDiagCoeffs(n, h);
    botDiagCoeffs = getBotDiagCoeffs(n, h);
    topDiagCoeffs = getTopDiagCoeffs(n, h);

    for i = 1 : n
        A(i, i) = mainDiagCoeffs(i);

        if (i + 1 <= n)
            A(i, i + 1) = topDiagCoeffs(i);
            A(i + 1, i) = botDiagCoeffs(i);
        end
    end

end

