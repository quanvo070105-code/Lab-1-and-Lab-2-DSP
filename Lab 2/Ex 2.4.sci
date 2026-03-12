// Ex 2.4
clear all;
n = -5:5;                   
ur = n .* bool2s(n >= 0);  

plot2d3(n, ur);
title("Unit ramp signal u_r(n)");
xlabel("n (t)");           
ylabel("u_r(n)");
xgrid();
