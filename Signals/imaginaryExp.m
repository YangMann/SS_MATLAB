%imaginary exponential Ce^at

C=1;
theta=pi/4;
w0=pi/4;
r=-0.1;

x=sym([num2str(C), '*exp(', num2str(r), '*t)*exp((', num2str(theta), '+t*', num2str(w0), ')*i)']);
xr=compose('real(x)', x);
xi=compose('imag(x)', x);
figure(1)
ezplot(xr, [0, 100]);
figure(2)
ezplot(xi, [0, 100]);