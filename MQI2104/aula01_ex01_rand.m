% Mostra o gerador de números aleatorios
% rand() a partir de una semente definida

% s = rand('state')

% retorna um vetor de estado com 35 
% elementos que caracterizam o gerador
% de números aleatórios

% s = rand('state', 0)
% coloca o gerador em seu estado inicial

% s = rand('state', 0)
% coloca o gerador em seu N-ésimo estado

% s = rand('state', sum(100*clock))
% coloca o gerador em um estado diferente
% a cada instante

clc;
clear all;

rand('state', 0)    % Define semente 0
set1 = rand(10,1);  % Gera matriz 10 x1
rand('state', 123)  % Define semente 123
set2 = rand(10,1);  % Gera matriz 10x1
[set1 set2]         % Concatena vetores



