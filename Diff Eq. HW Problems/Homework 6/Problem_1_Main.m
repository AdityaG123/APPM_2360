% Aditya Gopalan
% APPM 2360 Matlab Homework 5
% Due: Thursday, October 17, 2019
% Problem 1 - Main Script

clc
clear all
close all

A = [1 0 0 0; 1 -1 0 0; 0 1 -2 0; 1 -1 3 3]
B = [1 -1 -1 0 0 0; 0 1 0 1 -1 0; 0 0 1 -1 0 -1; 1 0 0 0 1 1]

%% (a)
% This matrix is a lower tiangular matrix.
% The maximum rank of matrix testA would be 4 because this matrix has 4
% pivot columns

%% (b)
J = rref(A)
% Matrix A has 4 pivot colums
% This means the rank(A) is still 4 since it matches the number of pivot
% columns

%% (c)
R = det(A)
% Matrix A has a determinant of 6. This makes sense because if the rank
% of the matrix equals the number of rows, then the determinant is greater
% than zero. If the rank was less than the number of rows, then the
% determinant would be 0.

%% (d)
% A is invertible because the determinant is greater than 0 and the inverse
% is equal to 1/determinant
H = A^-1
K = rref(H)

%% (e)
b = [1 1 1 1]';
x = A\b
y = rref(x)
% there are 4 solutions: 1, 0, -0.5, 0.5
% The solution to the augmented matrix is 1.00

%% (f)
bab = [0 0 0 0]';
h = A\bab
% zero solutions

%% (g)
A2 = [1 0 0 0; 1 0 1 3; 0 1 -2 0; 1 -1 3 3]
TT = rref(A2)
% Matrix A2 has 3 pivot columns. The last row does not have a pivot.


%% (h)
bb = [1 1 1 1]'
xx = A2\bb
%two infinite solutions

%% (i)
bbb = [1 0 0 0]'
xx = A2\bbb
% no solutions

%% (j)
BB = rref(B)
% four pivot columns
% B cannot have unique solutions because the determinant does not exist due
% to the fact that the rank of the matrix is less than the amount of rows

%% (k)
Hi = B'
HH = rref(Hi)
% matrix B transpose (Hi) has one pivot column
% B transpose cannot have any unique solution because it is not a square
% matrix.
