//Ex 2.8.3
n = -2:1;
x = [1 -2 3 6];

n3 = -n - 2;     
y3 = 2*x;

[n3s, idx] = gsort(n3, "g", "i");   // sort increasing
y3s = y3(idx);

scf(0); clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n3s, y3s);
title("y3(n) = 2x(-n-2)");
xlabel("n"); ylabel("Amplitude");
