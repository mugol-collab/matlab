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
xlim([0 20]), ylim([-0.5 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('Interpolação linear')
grid on;

yi = [0.150 0.673 1.520 1.820 2.205];
hold on
plot(xlim, [yi; yi], 'r-.')
xi = interp1(x, y, yi);
plot(xi, yi, 'm.', 'markersize', 20)
plot(x, y, 'b')
legend('Média tensões calibração (V)', 'Medições em campo')

