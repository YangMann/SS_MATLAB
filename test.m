clear, clf
global P D
N = 8;
k = -N : N;
for i = 1 : 2
    if i == 1
        x = 'rectangular_wave';
        P = 2;
        D = 1;
        c_true = D * sinc(k * D / P);
    else
        x = 'triangular_wave';
        P = 2;
        D = 1;
        c_true = D * sinc(k * D / P).^2;
    end
    w0 = 2 * pi / P;
    tt = [-400:400] * P / 200;
    xt = feval(x, tt);
    [c, kk] = CTFS_exponential(x, P, N);
    [c; c_true];
    discrepancy_between_numeric_and_analytic = norm(c - c_true);
    jkw0t = 1i * kk.' * w0 * tt;
    xht = real(c / P * exp(jkw0t));
    subplot(219 + i * 2), plot(tt, xt, 'k-', tt, xht, 'b:')
    axis([tt(1) tt(end) -0.2 1.2]), title('Periodic function x(t)')
    c_mag = abs(c);
    c_phase = angle(c);
    subplot(220 + i * 2), stem(kk, c_mag), title('CTFS Spectrum |X(k)|')
end   
