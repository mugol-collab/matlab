%% Interpolação Cúbica (Spline)
%
% Definição: Estimação de um polinomio 
% de grau 3 entre os dois pontos (x,y)
% garantindo maior suavidade na 
% interpolação

clc;
clear all;
close all;

x = 0:5;
y = [0 20 60 68 77 110];
plot(x, y, 'b.-')
xlim([-1 6]), ylim([-20 120])
xlabel('x'), ylabel('y')
xi = [2.6 3.2 4.9];

hold on
plot([xi;xi], ylim, 'r:')

yi = spline(x, y, xi);
plot(xi, yi, 'r.', 'markersize', 20)

xi  = 0:0.15:5;
yi = spline(x, y, xi);
plot(xi, yi, 'r')