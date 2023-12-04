function [u] = u(x)
    alpha = 1;
    betta = 2;
    u = x^alpha * (1 - x)^betta;
end

