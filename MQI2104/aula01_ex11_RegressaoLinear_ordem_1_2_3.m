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
T = [0 20 60 68 77 110];      % Valores medidos

plot(t, T, '.', 'markersize', 20)
xlabel('t(s)'), ylabel('T(C)')
xlim([-1 6]), ylim([-20 120])
grid on;

c1 = polyfit(t, T, 1)       % grau 1 de interpolação
c3 = polyfit(t, T, 3)       % grau 3 de interpolação
c5 = polyfit(t, T, 5)       % grau 5 de interpolação

t2 = 0:0.01:5;

T_1 = polyval(c1, t2);      % calculo do polinomio grau 1
T_3 = polyval(c3, t2);      % calculo do polinomio grau 3
T_5 = polyval(c5, t2);      % calculo do polinomio grau 5

hold on
plot(t2, T_1, 'r', 'linewidth', 2)
plot(t2, T_3, 'b', 'linewidth', 2)
plot(t2, T_5, 'm', 'linewidth', 2)
legend('Dados Medidos (T)', 'Ordem 1', 'Ordem 3', 'Ordem 5', 'Location', 'northwest')



