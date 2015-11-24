% syms t
% x = exp (-t);
% y = x * cos(10 * t);
sym t
T0 = 2;
m = heaviside(t) - heaviside(t - T0/2);
m1 = heaviside(t) - heaviside(t - T0);
x = m * cos(20 * pi * t);
x1 = m1 * cos(pi * t) * cos(20 * pi * t);
% [X, w] = fourierseries(x, T0, 60);
% [X1, w1] = fourierseries(x1, T0, 60);

figure
subplot(411); plot(m);
subplot(412); plot(m1);
subplot(413); plot(x);
subplot(414); plot(x);