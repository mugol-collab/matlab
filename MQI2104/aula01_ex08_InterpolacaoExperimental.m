%% Interpolação Experimental
%
% Mediçoes experimentais bidimensionais (em 
% posições espaciais não igualmente espaçadas)
% normalmente armazenadas em uma matriz de 3 
% colunas (X, Y e Z) e N linhas (correspondentes
% aos valores medidos)

clc;
clear all;
close all;

dados = load("medida.txt");
xe = dados(:, 1);
ye = dados(:, 2);
be = dados(:, 3);

xmin = min(xe); xmax = max(xe);
ymin = min(ye); ymax = max(ye);
N = 50;

xi = xmin:(xmax-xmin)/(N-1):xmax;
yi = ymin:(ymax-ymin)/(N-1):ymax;

[Xi Yi] = meshgrid(xi, yi);          % pego os 2 vetores e gero as 2 matrices
Bi = griddata(xe, ye, be, Xi, Yi);   % interpolo bidimensionalmete
pcolor(Xi, Yi, Bi)
shading interp
xlabel('x'), ylabel('y')
% axis([-3 3 -3 3])