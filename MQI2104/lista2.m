%% MQI 2104: Processamento e Análise de Sinais Digitais
%% SEGUNDA LISTA DE EXERCÍCIOS
%% Professor: Carlos Hall
%% Aluno: Juan Gómez


clc;
clear all;
close all;

n0 = -5:4;
x = [0 -1 -0.5 0.5 1 1 1 1 0.5 0];

%%% x[n]
subplot(4, 2, [1 2])
stem(n0, x)
xlim([-6 10]), ylim([-2 2])
title("x[n]")
% text(-5, 1.8,'[ 0 -1 -0.5 0.5 1 1 1 1 0.5 0]','FontSize',10,'Color','blue')
% text(-5, 1.4,'[-5 -4  -3   -2  -1 0 1 2  3  4]','FontSize',10,'Color','blue')
grid on;

%% (a) x[n-4]
subplot(4, 2, 3)
n1 = -1:8;
stem(n1, x(n1 - min(n1) + 1))
xlim([-6 10]), ylim([-2 2])
title("x[n-4]")
grid on;

%% (b) x[3-n]
subplot(4, 2, 4)

%% (c) x[3n]
subplot(4, 2, 5)

%% (d) x[3n+1]
subplot(4, 2, 6)

%% (e) x[n] u[3-n]
subplot(4, 2, 7)

%% (f) x[n-2]  o[n–2] 
subplot(4, 2, 8)

