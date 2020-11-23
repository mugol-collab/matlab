%% Regressão Linear (ou ajuste de curvas)
%
% É um método global, que determina a melhor função
% para o conjunto completo dos dados disponíveis,
% ou seja, encontra a função y = f(x) que melhor se
% ajusta aos dados
%
% c = polyfit(x, y, M)
%
% onde
% x: vetor de N elementos crescentes
% y: vetor de N elementos, correspondentes aos 
%    elementos do vetor x
% M: ordem do polinômio interpolador
%    *M = 1: interpolação linear
% c: vetor de M+1 elementos, contendo os coeficientes
%    do polinômio interpolador

clc;
clear all;
close all;

t = 0:5;
T = [0 20 60 68 77 110];

plot(t, T, '.', 'markersize', 20)
xlabel('t(x)'), ylabel('T(C)')
xlim([-1 6]), ylim([-20 120])
grid on;

% Função que faz a regressão (ordem 1)
c = polyfit(t, T, 1)        % [20.83 3.76]
T_ = polyval(c, t);         % Função complementar de polifyt
                            % polyval() calcula o polinomio
                            % que da o melhor ajuste lineal possível
% Cálculo do erro               
e = T_ - T;
MSE = mean(e.^2)            % 95.5  -> 59.47
RMSE = sqrt(MSE)            % 9.772 -> 7.71

hold on
Tc = 20 * t;                % aproximação inicial
plot(t, Tc, 'r')            % Gráfica da aproximação inicial
plot(t, T_, 'b')            % Gráfica do Melhor ajuste linear possível
legend("medido (T)", "estimado (20t)", "Least Sq (T_)", 'Location', 'northwest')



