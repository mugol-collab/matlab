%% Sequências
%
% Uma sequências é um conjunto ordenado de números
% no matlab uso a funçao stem() para representar
% uma sequencia discreta


clc;
clear all;
close all;

n = 0:4;
x = [1 3 7 5 11];
stem(n,x)
xlim([-1 5]), ylim([0 15])