%CT unit step function u(t-t0)
t0 = 0;
t = (t0-1):0.01:(t0+3);
y=(t>=0);
plot(t,y)
xlabel('t');
ylabel('u(t)');
axis([(t0-1) (t0+3) -0.2 1.2]);


