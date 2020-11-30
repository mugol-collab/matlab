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
    

%% Calculei as distâncias correspondentes a os valores
%% de tensão dados para entrar con xi na função interp1()

plot(x, y, '.', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('1. Interpolação linear')

hold on
grid on;
 
yi = [0.150 0.673 1.520 1.820 2.205];
xi = table2array(readtable("lista1.xlsx", "Range", "T3:T8"));

plot(xlim, [yi; yi], 'r-.')
yil = interp1(x, y, xi);
plot(xi, yil, 'm.', 'markersize', 20)
plot(x, y, 'b')


legend0 = sprintf('Pontos medidos');
legend1 = sprintf('Interp 1 = %0.2f]', yi(1));
legend2 = sprintf('Interp 2 = %0.2f]', yi(2));
legend3 = sprintf('Interp 3 = %0.2f]', yi(3));
legend4 = sprintf('Interp 4 = %0.2f]', yi(4));
legend5 = sprintf('Interp 5 = %0.2f]', yi(5));
legend(legend0,legend1, legend2, legend3, legend4, legend5);

% elinear = yil - yi;
% MSElinear = mean(elinear.^2)
% RMSElinear = sqrt(MSElinear)

% 3. Interpolação Cúbica

figure;
plot(x, y, 'b.-')
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação Cúbica')

%Ponto 1: 0.150 V
syms a
b1=vpa(expand(((a-0.250)*(a-0.5)*(a-0.75)*0.0012)/((0.000-0.250)*(0.000-0.50)*(0.000-0.750))+(((a-0.00)*(a-0.5)*(a-0.75)*1.2109)/((0.250-0.000)*(0.250-0.50)*(0.250-0.750)))+(((a-0.00)*(a-0.25)*(a-0.75)*1.8544)/((0.50-0.000)*(0.50-0.250)*(0.50-0.750)))+(((a-0.00)*(a-0.25)*(a-0.5)*2.1203)/((0.750-0.000)*(0.750-0.250)*(0.750-0.50)))))
eqn= 2.0117333333333333333333333333333*a^3 - 6.0384*a^2 + 6.2226666666666666666666666666667*a + 0.0012==0.150;
a1=vpasolve(eqn,a);


%Ponto 2: 0.673 V
syms a
b2=vpa(expand(((a-0.250)*(a-0.5)*(a-0.75)*0.0012)/((0.000-0.250)*(0.000-0.50)*(0.000-0.750))+(((a-0.00)*(a-0.5)*(a-0.75)*1.2109)/((0.250-0.000)*(0.250-0.50)*(0.250-0.750)))+(((a-0.00)*(a-0.25)*(a-0.75)*1.8544)/((0.50-0.000)*(0.50-0.250)*(0.50-0.750)))+(((a-0.00)*(a-0.25)*(a-0.5)*2.1203)/((0.750-0.000)*(0.750-0.250)*(0.750-0.50)))))
eqn= 2.0117333333333333333333333333333*a^3 - 6.0384*a^2 + 6.2226666666666666666666666666667*a + 0.0012==0.673;
a2=vpasolve(eqn,a);

%Ponto 3: 1.520 V

syms a
b3=vpa(expand(((a-0.250)*(a-0.5)*(a-0.75)*0.0012)/((0.000-0.250)*(0.000-0.50)*(0.000-0.750))+(((a-0.00)*(a-0.5)*(a-0.75)*1.2109)/((0.250-0.000)*(0.250-0.50)*(0.250-0.750)))+(((a-0.00)*(a-0.25)*(a-0.75)*1.8544)/((0.50-0.000)*(0.50-0.250)*(0.50-0.750)))+(((a-0.00)*(a-0.25)*(a-0.5)*2.1203)/((0.750-0.000)*(0.750-0.250)*(0.750-0.50)))))
eqn= 2.0117333333333333333333333333333*a^3 - 6.0384*a^2 + 6.2226666666666666666666666666667*a + 0.0012==1.520;
a3=vpasolve(eqn,a);

%Ponto 4: 1.820 V

syms a
b4=vpa(expand(((a-0.250)*(a-0.5)*(a-0.75)*0.0012)/((0.000-0.250)*(0.000-0.50)*(0.000-0.750))+(((a-0.00)*(a-0.5)*(a-0.75)*1.2109)/((0.250-0.000)*(0.250-0.50)*(0.250-0.750)))+(((a-0.00)*(a-0.25)*(a-0.75)*1.8544)/((0.50-0.000)*(0.50-0.250)*(0.50-0.750)))+(((a-0.00)*(a-0.25)*(a-0.5)*2.1203)/((0.750-0.000)*(0.750-0.250)*(0.750-0.50)))))
eqn= 2.0117333333333333333333333333333*a^3 - 6.0384*a^2 + 6.2226666666666666666666666666667*a + 0.0012==1.820;
a4=vpasolve(eqn,a);

%Ponto 5: 2.205 V

syms a
b5=vpa(expand(((a-0.50)*(a-0.75)*(a-1)*1.2109)/((0.250-0.5)*(0.250-0.750)*(0.250-1))+(((a-0.250)*(a-0.75)*(a-1)*1.8544)/((0.50-0.250)*(0.50-0.750)*(0.50-1)))+((a-0.250)*(a-0.5)*(a-1)*2.1203)/((0.750-0.250)*(0.750-0.50)*(0.750-1)))+(((a-0.25)*(a-0.5)*(a-0.75)*2.2173)/((1-0.250)*(1-0.50)*(1-0.750))))
eqn= 29.1168*a^2 - 9.8901333333333333333333333333333*a - 21.425066666666666666666666666667*a^3 + 23.6512*(a - 0.25)*(a - 0.5)*(a - 0.75) + 2.1984==2.205;
a5=vpasolve(eqn,a);

a11=double(a1(1,1)) % distancia para 0.150 
a22=double(a2(1,1)) % distancia para 0.673 
a33=double(a3(1,1)) % distancia para 1.520 
a44=double(a4(1,1)) % distancia para 1.820 
a55=double(a5(1,1)) % distancia para 2.205

xi = [a11 a22 a33 a44 a55];
yic = spline(x, y, xi);

hold on
plot(xi, yic, '.', 'markersize', 20)
plot(xlim, [yic; yic], 'r-.')
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('2. Interpolação cubica')

% ecubica = yic - y;
% MSEcubica = mean(ecubica.^2)
% RMSEcubica = sqrt(MSEcubica)


% 4. Validação cruzada

% figure;
% y80 = y(1:26);  % valores de ajuste polinomio 80%
% x80 = x(1:26);  % valores de distância 80%
% 
% plot(x80, y80, '.', 'markersize', 20)
% title('4. Validação cruzada')
% xlim([0 20]), ylim([0 2.5])
% xlabel('Distância (cm)'), ylabel('Tensâo (V)')
% 
% c1 = polyfit(x80, y80, 1);        % grau 1 de interpolação
% c3 = polyfit(x80, y80, 3);        % grau 3 de interpolação
% c5 = polyfit(x80, y80, 5)        % grau 5 de interpolação
% 
% T_1 = polyval(c1, x80);          % calculo do polinomio grau 3
% T_3 = polyval(c3, x80);          % calculo do polinomio grau 3
% T_5 = polyval(c5, x80);         % calculo do polinomio grau 5
% 
% e = T_5 - y80;
% MSE = mean(e.^2)
% RMSE = sqrt(MSE)
% 
% hold on
% plot(x80, T_1, 'r', 'linewidth', 2)
% plot(x80, T_3, 'b', 'linewidth', 2)
% plot(x80, T_5, 'm', 'linewidth', 2)
% legend('Média tensoes calibração (V)', 'Ordem 1', 'Ordem 3', 'Ordem 5', 'Location', 'northeast')
% text(9, 1.8,'MSE  = 0.0341','FontSize',10,'Color','blue')
% text(9, 1.7,'RMSE = 0.1847','FontSize',10,'Color','blue')
% 
% % 5. Calculo de distâncias a partir do polinomio de grau 5
% 
% figure;
% plot(x, y, '.', 'markersize', 20)
% title('5. Calculo de distâncias')
% xlabel('Distância (cm)'), ylabel('Tensâo (V)')
% xlim([0 20]), ylim([-0.5 2.5])
% grid on;
% 
% % Regressão de ordem 5
% c5 = polyfit(x, y, 5);        % grau 5 de interpolação
% x2 = 0:0.01:20;
% T_5 = polyval(c5, x2);      % calculo do polinomio grau 5
% 
% hold on
% plot(x2, T_5, 'm', 'linewidth', 2)
% legend('Média tensoes calibração (V)', 'distancias', 'Location', 'northeast')
% 
% % 6. Funções não lineares
% %% Erro na função optimset(@lsqnonlin) - versao 2020b
% 
Vin = 20;
t = distancias;
Vout_e = tensaoMedia;
figure;
plot(t, Vout_e, '.-', 'markersize', 20)
xlim([0 20]), ylim([0 2.5])
xlabel('Distância (cm)'), ylabel('Tensâo (V)')
title('6. Valores Vo, t1 e t2')

tao = [1 1];
options = optimset(@lsqnonlin);
V = lsqnonlin('lista1_funcaoSensor', tao, [], [], options, Vin, t, Vout_e)


