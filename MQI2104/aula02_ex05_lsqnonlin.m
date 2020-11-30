%% Sistemas nao lineares

Vin = 5;
t = 0:10;
Vout_e = [0.014 3.186 4.337 4.775 4.884 4.966 4.985 4.963 5.004 4.978 5.028];
plot(t, Vout_e, '.-', 'markersize', 20)
xlabel('t(s)')
ylabel('Vout(V)')
xlim([0 11])
ylim([0 5.5])

X0 = [1 1];
options = optimset(@lsqnonlin)
X = lsqnonlin('filtroRC', X0, [], [], options, Vin, t, Vout_e)

function erro = filtroRC(X, Vin, t, Vout_e)
    R = X(1);
    C = X (2);
    Vout = Vin * (1 - exp(-t/(R*C)));
    erro = Vout - Vout_e;
end
