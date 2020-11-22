%% @brief: Distribución uniforme em [0 1]
%
% Para obtener distribuções uniformes
% em outros intervalos [m, n]
%
% (n-m) * rand() + m
% onde
% (n-m): largura do intervalo
%  m   : inicio do intervalo

clc;
clear all;
close all;


% Senales de ruido
d1 = 2 * rand(1,500) + 2;   % varia entre [2, 4]
d2 = rand(1,500) +3;        % varia entre [3, 4]

subplot(2,1,1), plot(d1), axis([0 500 0 6])
subplot(2,1,2), plot(d2), axis([0 500 0 6])