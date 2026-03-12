// Ex 2.8.2
n = -2:1;
x = [1 -2 3 6];

n2 = n - 3;
y2 = x;

scf(0); clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n2, y2);
title("y2(n) = x(n+3)");
xlabel("n"); ylabel("Amplitude");
