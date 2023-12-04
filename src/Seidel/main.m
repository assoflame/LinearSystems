clear;
clc;

n = 5;
h = 1/n;
eps = 1e-5;
disp(eps);
mu1 = 1;

A = getCoeffs(n, h);
disp(A);
b = getRightPart(n, h, mu1);

x = Zeidel(n, h, eps, mu1);

disp(A * x);
disp(b);
