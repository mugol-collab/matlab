%% @brief: Distribución normal em [0 1]
%
% Para obtener distribuções normais
% com outros parámetros [u, o]
%
% u + rand() * o     ==   o * rand() + u
%
% onde
% u: media
% o: desvio padrão 

clc;
clear all;
close all;                      % media desvioPadrão 
                                %    u    o   
data3 = randn(1, 500) + 3;      %   [3,   1]
% data4 = randn(1, 500) * 3 + 1;  %   [1,   3]
data4 = 3 * randn(1, 500) + 1;  %   [1,   3]
subplot(2, 1, 1), plot(data3), axis([0 500 -10 10])
subplot(2, 1, 2), plot(data4), axis([0 500 -10 10])