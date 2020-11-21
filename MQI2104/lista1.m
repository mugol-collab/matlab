clc;
clear all;
close all;

% Tabela de dados distância vs tensão 
tensaoSensor = table2array(readtable("tabelaLista1.xlsx", "Range", "B3:K35"));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Tensão média correspondente a cada valor de distância

tensaoMedia = zeros(1,33);

for i = 1:33
   d = tensaoSensor(i,:);
   tensaoMedia(i) = mean(d)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Interpolação linear

x = table2array(readtable("tabelaLista1.xlsx", "Range", "A3:A35"));
y = tensaoMedia;
plot(x', y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
xi = [0.150 0.673 1.520 1.820 2.205];
yi = interp1(x, y, xi);
hold on
plot(xi, yi, 'm.', 'markersize', 20)
% plot(x, y, 'g')

