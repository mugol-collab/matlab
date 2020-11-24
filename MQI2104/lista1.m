%% MQI 2104: Processamento e Análise de Sinais Digitais
%% PRIMEIRA LISTA DE EXERCÍCIOS
%% Professor: Carlos Hall
%% Aluno: Juan Gómez

clc;
clear all;
close all;

% Tabela de dados distância vs tensão 
tensaoSensor = table2array(readtable("Lista1.xlsx", "Range", "B3:K35"));
distancias = table2array(readtable("lista1.xlsx", "Range", "A3:A35"));

% 1. Tensão média correspondente a cada valor de distância

tensaoMedia = zeros(1,33);

for i = 1:33
   tensoes = tensaoSensor(i,:);
   tensaoMedia(i) = mean(tensoes);
end

% 2. Interpolação linear

x = distancias';
y = tensaoMedia;

plot(x, y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação linear')
grid on;
% 
%% Calculei as distâncias correspondentes a os valores
%% de tensão dados para entrar con xi na função interp1()
%
yi = [0.150 0.673 1.520 1.820 2.205];
xi = [0.030969 0.138946 0.370085 0.486636 1.591463];
%
hold on
plot(xlim, [yi; yi], 'r-.')
% xi = interp1(x, y, yi);
yi = interp1(x, y, xi);
plot(xi, yi, 'm.', 'markersize', 20)
plot(x, y, 'b')


legend0 = sprintf('Pontos medidos')
legend1 = sprintf('Interp 1 = %0.2f]', yi(1));
legend2 = sprintf('Interp 2 = %0.2f]', yi(2));
legend3 = sprintf('Interp 3 = %0.2f]', yi(3));
legend4 = sprintf('Interp 4 = %0.2f]', yi(4));
legend5 = sprintf('Interp 5 = %0.2f]', yi(5));
legend(legend0,legend1, legend2, legend3, legend4, legend5);

% 3. Interpolação Cúbica

figure;
plot(x', y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação Cúbica')
xi = [0.150 0.673 1.520 1.820 2.205];
yi = spline(x, y, xi)
hold on
plot (xi,yi,'r.', 'markersize', 20)
