function erro = aula02_filtroRC(X, Vin, t, Vout_e)
    R = X(1);
    C = X (2);
    Vout = Vin * (1 - exp(-t/(R*C)));
    erro = Vout - Vout_e;
end