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
% Exemplo: dado de 6 faces
% m = 2         6
% N = 100       100 lançamentos

clc;
clear all;
close all;

x = floor(6 * rand(1, 100) + 1);
hist(x, [1:6])
xlabel('Numero')
ylabel('Frequencia')
set(gcf, 'color', 'w')
title('Histograma freq. abs. para 100 dados')