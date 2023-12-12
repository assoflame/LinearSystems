function [x] = Seidel(bot, mid, top, b, n, eps)
    x = ones(n, 1);
    
    while (max(abs(mult3DiagMatrixOnVector(bot, mid, top, x) - b)) > eps)

        x(1) = -top(1) / mid(1) * x(2) + b(1) / mid(1);

        for i = 2 : n - 1
            x(i) = -bot(i - 1) / mid(i) * x(i - 1) - top(i) / mid(i) * x(i + 1) + b(i) / mid(i);
        end

        x(end) = -bot(end) / mid(end) * x(n - 1) + b(end) / mid(end);

    end

end
