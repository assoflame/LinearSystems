function [b] = mult3DiagMatrixOnVector(bot, mid, top, x)
    b = zeros(length(mid), 1);

    b(1) = mid(1) * x(1) + top(1) * x(2);
    b(end) = mid(end) * x(end) + bot(end) * x(end - 1);

    for i = 2 : length(mid) - 1
        b(i) = bot(i - 1) * x(i - 1) + mid(i) * x(i) + top(i) * x(i + 1);
    end
end