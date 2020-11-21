%#####################################################
% @brief: ejemplos numeros aleatorios
%
% Instrucciones que asignan enteros de 
% manera aleatoria a la variable n en 
% intervalos definidos:
%
% intervalos[m, n]
% (n-m) * rand() + m
%
% onde
% (n-m): largura do intervalo
%  m   : inicio do intervalo
%#####################################################
clc;
clear all;
close all;

% a) 1 <= n <= 2

a = rand(1, 500) + 1;
subplot(3, 2, 1), plot(a), axis([0 500 0 3])
title("1 <= n <= 2: rand(1, 500) + 1");

% % b) 1 <= n <= 100
b = 99 * rand(1, 500) + 1;
subplot(3, 2, 3), plot(b), axis([0 500 -10 110])
title("1 <= n <= 100: 100 * rand(1, 500) + 1");

% % c) 0 <= n <= 9
c = 9 * rand(1, 500);
subplot(3,2,5), plot(c), axis([0 500 0 10])
title("0 <= n <= 9: 9 * rand(1, 500)");

% % d) 1000 <= n <= 1112
d = 112 * rand(1, 500) + 1000;
subplot(3,2,2), plot(d), axis([0 500 990 1130])
title("1000 <= n <= 1112: 112 * rand(1, 500) + 1000");

 
% % e) -1 <= n <= 1
e = 2 * rand(1, 500) - 1;
subplot(3,2,4), plot(e), axis([0 500 -2 2])
title("-1 <= n <= 1: 3 * rand(1, 500) - 1");

 
% % f) -3 < n <= 11
f = 14 * rand(1, 500) - 3;
subplot(3,2,6), plot(f), axis([0 500 -4 12])
title("-3 < n <= 11: 14 * rand(1, 500) -3");

