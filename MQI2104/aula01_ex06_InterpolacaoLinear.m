%% Interpolação Linear
%
% Definição: Estimação de um valor yi,
% correspondente a um determinado xi,
% a partir de um conjunto disponível 
% de pares (x,y)

clc;
clear all;
close all;

x = 0:5;
y = [0 20 60 68 77 110];

plot(x, y, '.', 'markersize', 20)
xlim([-1 6]), ylim([-20 120])
xlabel('x'), ylabel('y')
xi = [2.6 3.2 4.9];
hold on
plot([xi;xi], ylim, 'r:')

yi = interp1(x, y, xi)
plot(xi, yi, 'r.', 'markersize', 20)
%legend(sprintfc('yi_1: %.2f', yi(1)), 'Location', 'northwest')

plot(x,y)