%% Regressão Linear (ou ajuste de curvas)
%
% É um método global, que determina a melhor função
% para o conjunto completo dos dados disponíveis,
% ou seja, encontra a função y = f(x) que melhor se
% ajusta aos dados

clc;
clear all;
close all;

t = 0:5;
T = [0 20 60 68 77 110];
plot(t, T, '.', 'markersize', 20)
xlabel('t(x)'), ylabel('T(C)')
xlim([-1 6]), ylim([-20 120])
grid on;

Tc = 20 * t;
hold on
plot(t, Tc, 'r')
legend("medido", "estimado", 'Location', 'northwest')