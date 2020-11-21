% @brief: Funcões de arrendodamento usadas com rand() 
%
% floor(): arredondamento para baixo
% ceil() : arredondamento para cima
% round(): arredondamento para o mais 
%          próximo
%
% intervalos[m, n]
% (n-m) * rand() + m
%
% onde
% (n-m): largura do intervalo
%  m   : inicio do intervalo
%
% x = floor(m * rand(1, N) + 1)
% 
% x pode assumir m valores {X1, X2, ... Xn}
% com a memsa probabilidade
%
% Exemplo: moeda (cara ou coroa)
% m = 2         2 lados possíveis
% n = 50        50 sorteos

clc;
clear all;
close all;

% - o argumento de rand vai gerar 50 numeros entre 0  e 1
%   (menor do que 1)
% - o produto desse valor * 2 vai gerar um numero entre 
%   0 e 2 (menor de que 2)
% - A suma de 1 vai gerar um numero entre 1 e 3 (menor do
%   que 3)
% - Quando uso floor vou truncar a saída para o número 
%   menor, ou seja, entre 1 e 2 (menor do que 2)
x = floor(2 * rand(1, 50) + 1);

hist(x, [1 2])
xlabel('1 : cara, 2:coroa')
ylabel('Frequencia')
set(gcf, 'color', 'w')
title('Histograma freq. abs. para 50 moedas')
