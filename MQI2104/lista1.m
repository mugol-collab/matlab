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
    
% Opção de interpolação 1 - entrando com medições de campo
% no eixo x

subplot(2,1,1)
plot(x, y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação linear - opção 1')
grid on;
xi = [0.150 0.673 1.520 1.820 2.205];
hold on
plot([xi;xi], ylim, 'r-.')
yi = interp1(x, y, xi);
plot(xi, yi, 'm.', 'markersize', 20)
plot(x, y, 'b')


subplot(2,1,2)
plot(x, y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação linear - opção 2')
grid on;

% Opção de Interpolação 2  
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


legend0 = sprintf('Pontos medidos');
legend1 = sprintf('Interp 1 = %0.2f]', yi(1));
legend2 = sprintf('Interp 2 = %0.2f]', yi(2));
legend3 = sprintf('Interp 3 = %0.2f]', yi(3));
legend4 = sprintf('Interp 4 = %0.2f]', yi(4));
legend5 = sprintf('Interp 5 = %0.2f]', yi(5));
legend(legend0,legend1, legend2, legend3, legend4, legend5);

% 3. Interpolação Cúbica

figure;
plot(x, y, 'b.-')
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação Cúbica')
xi = [0.150 0.673 1.520 1.820 2.205];
yi = spline(x, y, xi);
hold on
plot(xlim, [yi; yi], 'r-.')
plot (xi,yi,'r.', 'markersize', 20)

% 4. Validação cruzada

figure;
y80 = y(1:26);  % valores de ajuste polinomio 80%
x80 = x(1:26);  % valores de distância 80%

plot(x80, y80, '.', 'markersize', 20)
title('4. Validação cruzada')
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')

c1 = polyfit(x80, y80, 1)        % grau 1 de interpolação
c3 = polyfit(x80, y80, 3)        % grau 3 de interpolação
c5 = polyfit(x80, y80, 5)        % grau 5 de interpolação

T_1 = polyval(c1, x80);          % calculo do polinomio grau 3
T_3 = polyval(c3, x80);          % calculo do polinomio grau 3
T_5 = polyval(c5, x80);          % calculo do polinomio grau 5

e = T_5 - y80;
MSE = mean(e.^2)
RMSE = sqrt(MSE)

hold on
plot(x80, T_1, 'r', 'linewidth', 2)
plot(x80, T_3, 'b', 'linewidth', 2)
plot(x80, T_5, 'm', 'linewidth', 2)
legend('Média tensoes calibração (V)', 'Ordem 1', 'Ordem 3', 'Ordem 5', 'Location', 'northeast')
text(9, 1.8,'MSE  = 0.0341','FontSize',10,'Color','blue')
text(9, 1.7,'RMSE = 0.1847','FontSize',10,'Color','blue')

% 5. Calculo de distâncias a partir do polinomio de grau 5

figure;
plot(x, y, '.', 'markersize', 20)
title('5. Calculo de distâncias')
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
xlim([0 20]), ylim([-0.5 2.5])
grid on;

% Regressão de ordem 1
c1 = polyfit(x, y, 1);       % grau 1 de interpolação
c3 = polyfit(x, y, 3);       % grau 3 de interpolação
c5 = polyfit(x, y, 5);        % grau 5 de interpolação

x2 = 0:0.01:20;

T_1 = polyval(c1, x2);      % calculo do polinomio grau 1
T_3 = polyval(c3, x2);      % calculo do polinomio grau 3
T_5 = polyval(c5, x2);      % calculo do polinomio grau 5

hold on
plot(x2, T_1, 'r', 'linewidth', 2)
plot(x2, T_3, 'b', 'linewidth', 2)
plot(x2, T_5, 'm', 'linewidth', 2)
legend('Média tensoes calibração (V)', 'Ordem 1', 'Ordem 3', 'Ordem 5 - distâncias', 'Location', 'northeast')




