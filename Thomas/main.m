

n = 5;
h = 1/n;
mu1 = 1;

bot = getBotDiagCoeffs(n, h);
mid = getMainDiagCoeffs(n, h);
top = getTopDiagCoeffs(n, h);
b = getRightPart(n, h, mu1);

x = Thomas(bot, mid, top, b, n);

disp(b);
disp(mult3DiagMatrixOnVector(bot, mid, top, x));



