%% Sequências
%
% Uma sequências é um conjunto ordenado de números
% no matlab uso a funçao stem() para representar
% uma sequencia discreta

clc;
clear all;
close all;

n = -3:1;
x = [1 3 7 5 11];
stem(n, x)
xlim([-4 2]), ylim([0 15])

[n; x(n - min(n) + 1)]