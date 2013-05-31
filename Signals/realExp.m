%real exponential Ce^at

C=1;
a=-0.5;

t=[0:0.01:10];
x=C*exp(a*t);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title(['x(t)=', int2str(C) ,'*exp(', num2str(a) ,'*t)']);
grid on

