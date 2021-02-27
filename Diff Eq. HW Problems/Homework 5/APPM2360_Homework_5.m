% Aditya Gopalan
% APPM 2360 Matlab Homework 5
% Due: Thursday, October 10, 2019

clc
clear all
close all

%% Problem #1
disp('Problem 1')
C1 = 7 * ones(2, 5)

%% Problem #2
disp('Problem 2')

% (a)
a = [3 -1 5 11 -4 2];
b = [7 -9 2 13 1 -2];
c = [-2 4 -7 8 0 9];

% (b)
a2 = [a; b; c]
b2 = [a' b' c']

% (c)
a2-b2'


%% Problem #3
disp('Problem 3')

% (a)
A3 = [1 -3 5; 2 -2 4; -2 0 6];
B3 = [0 -2 1; 5 1 -6; 2 -7 1];
C3 = [-3 4 -1; 0 8 2; 3 5 3];
D3 = A3 + B3
E3 = B3 + A3

% (b)
A4 = [1 -3 5; 2 -2 4; -2 0 6];
B4 = [0 -2 1; 5 1 -6; 2 -7 1];
C4 = [-3 4 -1; 0 8 2; 3 5 3];
D4 = A4 + (B4 + C4)
E4 = (A4 + B4) + C4

% (c)
A5 = [1 -3 5;2 -2 4;-2 0 6];
B5 = [0 -2 1;5 1 -6;2 -7 1];
C5 = [-3 4 -1;0 8 2;3 5 3];
D5 = 3 * (A5 + C5)
E5 = 3 * A5 + 3 * C5

% (d)
A6 = [1 -3 5; 2 -2 4; -2 0 6];
B6 = [0 -2 1; 5 1 -6; 2 -7 1];
C6 = [-3 4 -1; 0 8 2; 3 5 3];
D6 = A6 * (B6 + C6)
E6 = A6 * B6 + A6 * C6

% (e)
A7 = [1 -3 5;2 -2 4;-2 0 6];
B7 = [0 -2 1;5 1 -6;2 -7 1];
C7 = [-3 4 -1;0 8 2;3 5 3];
D7 = A7 * B7
E7 = B7 * A7

%% Problem #4
disp('Problem 4')

A8 = [-4, 3, 1; 5, 6, -2; 2, -5, 4.5];
B8 = [-18.2, -48.8, 92.5]';
x8 = A8 \ B8

%% Problem #5
disp('Problem 5')

A9 = [1 2 3; 0 4 5; 0 0 6]
B9 = rand(3)
C9 = rand(3)
D9 = rand(3)

disp('det(A9)')
disp(det(A9))

disp('det(B9^(-1)A9B9)')
disp(det(inv(B9)*A9*B9))

disp('det(C9^(-1)A9C9)')
disp(det(inv(C9)*A9*C9))

disp('det(D9^(-1)A9D9)')
disp(det(inv(D9)*A9*D9))

%Written portion of this problem is done after the Section 3.2 - 3.4 
%of the written homework.
