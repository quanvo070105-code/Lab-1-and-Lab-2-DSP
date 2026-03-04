clc;
close;
clear;
clf;

// 1.1 
x = [1:4];
x1 = x + 1
disp(x1)

y = [5:8];
xy = x .* y
disp(xy) 

x = linspace(0, %pi, 10);
sin_x = sin(x)
disp(sin_x)

// 1.2 
subplot(2,1,1)
t = linspace(0,0.1,500);
xa = 3*sin(100*%pi*t)
plot(t, xa, style = 1)
title("Analog signal xa(t)")
// xa(t) = 3*sin(100*pi*t) = 3*sin(2*pi*50*t)
// => f0 = 50 Hz
// Fs = 300 Hz => Ts = 1/300
// x(n) = xa(nTs) = 3*sin(100*pi*n/300) = 3*sin(pi*n/3)
Fs = 300;
Ts = 1/Fs;
// x(n) = 3*sin(pi*n/3) = 3*sin(2*pi*(1/6)*n)
// => f (normalized cycles/sample) = 1/6, fundamental period N0 = 6
subplot(2,1,2)
n = linspace(0,30,200); //5 periods => 6*5 =30  
xn = 3*sin(%pi*n/3);
plot2d3(n, xn, style = 1)
title("Sampled signal x(n)")
// truncated: xqn = floor(xn/delta)*delta
delta = 0.1;
xqn = floor(xn/delta)*delta;
plot2d3(n, xqn, style = 4)
legend(["x(n)"; "xq(n)"])
