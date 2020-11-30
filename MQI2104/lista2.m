%% MQI 2104: Processamento e Análise de Sinais Digitais
%% SEGUNDA LISTA DE EXERCÍCIOS
%% Professor: Carlos Hall
%% Aluno: Juan Gómez


clc;
clear all;
close all;

n = -5:4;
x = [0 -1 -0.5 0.5 1 1 1 1 0.5 0];

subplot(2, 2, [1 2])
stem(n, x)
xlim([-6 5]), ylim([-2 2])
title("Sequência principal")
text(-5, 1.8,'[ 0 -1 -0.5 0.5 1 1 1 1 0.5 0]','FontSize',10,'Color','blue')
text(-5, 1.6,'[-5 -4  -3   -2  -1 0 1 2  3  4]','FontSize',10,'Color','blue')
grid on;

subplot(2, 2, 3)
stem(n, x - 4)
