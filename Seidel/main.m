

n = 5;
h = 1/n;
eps = h^6;
% disp(eps);
mu1 = 1;

x = Seidel(n, h, eps, mu1);
top = getTopDiagCoeffs(n, h);
mid = getMainDiagCoeffs(n, h);
bot = getBotDiagCoeffs(n, h);

b = getRightPart(n, h, mu1);

disp(mult3DiagMatrixOnVector(bot, mid, top, x));
disp(b);






