function [c, kk] = CTFS_exponential(x, P, N)
w0 = 2 * pi / P;
xexp_jkw0t_ = [x '(t).*exp(-j*k*w0*t)'];
xexp_jkw0t = inline(xexp_jkw0t_, 't', 'k', 'w0');
kk = -N:N;
tol = 1e-6;
for k = kk
    c(k+N+1) = quadl(xexp_jkw0t, -P/2, P/2, tol, [], k, w0);


end

