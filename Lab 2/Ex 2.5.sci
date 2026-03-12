
// EX 2.5
// Index and signal (3 is at n=0)
n = -1:1;
x = [1 3 -2];

// x(-n): reverse 
x_neg = x($:-1:1);

// Even and odd components
xe = 0.5*(x + x_neg);
xo = 0.5*(x - x_neg);

scf(0); clf;

subplot(3,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(3,1,2);
plot2d3(n, xo);
title("Odd component x_o(n)");
xlabel("n"); ylabel("Amplitude");

subplot(3,1,3);
plot2d3(n, xe);
title("Even component x_e(n)");
xlabel("n"); ylabel("Amplitude");
