% Aditya Gopalan
% APPM 2360 Matlab Homework 5
% Due: Thursday, October 17, 2019
% Problem 3 - Main Script

clc
clear all
close all

figure
[t_out, v_out] = ode45(@duffing, [0: 0.1: 38], [1, 0]);
plot(v_out(:,1), v_out(:,2))
hold on
xlabel('x')
ylabel('y')
title('Phase Plane Duffing Equation')
hold off

figure
plot(t_out, v_out(:,1))
hold on
plot(t_out, v_out(:,2))
xlabel('t')
ylabel('x or y')
legend('x(t)', 'y(t)')
title('Duffing Component Curves')
hold off