clc 
close all
clear all

A = [0.7, 0, 0, 0.2, 0, 0;
     0.3, 0, 0, 0, 0, 0;
     0, 0.5, 0, 0, 0, 0;
     0, 0.5, 1, 0.8, 0, 0;
     0, 0, 0, 0, 0.25, 0;
     0, 0, 0, 0, 0.75, 1;
     ];
 
 E = eig(A);
 disp('The eigen values are:');
 disp(E);
 u = unique(E)