%% Sistemas Lineares

clc;
clear all;
close all;

A = [3 2 -1; -1 3 2; 1 -1 -1];
b = [10 5 -1];

% x1 = inv(A)
% x = inv(A)*b
x = A.\b
