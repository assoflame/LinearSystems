function [x] = Thomas(bot, mid, top, n, h, mu1)
    x = zeros(n, 1);
    b = getRightPart(n, h, mu1);

    alpha = zeros(n);
    betta = zeros(n);
    alpha(2) = -top(1) / mid(1);
    betta(2) = b(1) / mid(1);

    for i = 2 : n - 1
        alpha(i + 1) = -top(i) / (mid(i) + bot(i - 1) * alpha(i));
        betta(i + 1) = (b(i) - bot(i - 1) * betta(i)) / (mid(i) + bot(i - 1) * alpha(i));
    end
    
    x(n) = (b(n) - bot(n - 1) * betta(n)) / (bot(n - 1) * alpha(n) + mid(n));

    for i = n - 1 : -1 : 1
        x(i) = alpha(i + 1) * x(i + 1) + betta(i + 1);
    end

end