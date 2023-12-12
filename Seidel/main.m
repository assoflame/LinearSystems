n = 5;
h = 1/n;
eps = h^6;
mu1 = 1;

bot = getBotDiagCoeffs(n, h);
mid = getMainDiagCoeffs(n, h);
top = getTopDiagCoeffs(n, h);
b = getRightPart(n, h, mu1);

x = Seidel(bot, mid, top, b, n, eps);

disp(b);
disp(mult3DiagMatrixOnVector(bot, mid, top, x));






