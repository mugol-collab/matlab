function erro = lista1_funcaoSensor(tao, Vin, t, Vout_e)
    tao1 = tao(1);
    tao2 = tao(2);
    Vout = Vin * ((exp(-t/tao1)) - (exp(-t/tao2)));
    erro = Vout - Vout_e;
end