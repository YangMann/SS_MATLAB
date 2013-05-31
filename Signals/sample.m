%sampling function  sin(t)/t

t=[-5*pi:pi/100:5*pi];
x=sinc(t/pi);
plot(t, x);
xlabel('t');
ylabel('x(t)');
title('Sa(t)')
grid on