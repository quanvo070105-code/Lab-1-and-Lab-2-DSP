//Ex 2.8.1
n = -2:1;
x = [1 -2 3 6];

// y1(n) = x(-n)
n1 = -n($:-1:1);    
y1 = x($:-1:1);    

scf(0); clf;

subplot(2,1,1);
plot2d3(n, x);
title("x(n)");
xlabel("n"); ylabel("Amplitude");

subplot(2,1,2);
plot2d3(n1, y1);
title("y1(n) = x(-n)");
xlabel("n"); ylabel("Amplitude");
