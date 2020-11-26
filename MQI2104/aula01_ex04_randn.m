%% DISTRIBUÇÃO NORMAL
%
% Mostra o gerador de números aleatorios
% randn() a partir de una semente definida
%
% Esta função vai estar concentrada em torno 
% do 0 com uma distribução simétrica, mas nada
% empede que tome um valor enorme

% s = randn('state')
%
% retorna um vetor de estado com 35 
% elementos que caracterizam o gerador
% de números aleatórios
%
% s = randn('state', 0)
% coloca o gerador em seu estado inicial
%
% s = rand('state', N)
% coloca o gerador em seu N-ésimo estado
%
% s = rand('state', sum(100*clock))
% coloca o gerador em um estado diferente
% a cada instante

clc;
clear all;
close all;

randn('state', 0)
set3 = randn(10, 1);
randn('state', 123)
set4 = randn(10, 1);
[set3 set4]