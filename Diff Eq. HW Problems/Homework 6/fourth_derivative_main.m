% Aditya Gopalan
% APPM 2360 Matlab Homework 5
% Due: Thursday, October 17, 2019
% Problem 2 - Main Script

clc
clear all
close all

figure
[t_out, v_out]  = ode45(@fourth_derivative, [0, 25], [1, 2, 3, 4]);
plot(t_out, v_out(:,1))
hold on
plot(t_out, v_out(:,2))
plot(t_out, v_out(:,3))
plot(t_out, v_out(:,4))
legend('x1', 'x2', 'x3', 'x4')
xlabel('t')
ylabel('x')
hold off

figure
plot(v_out(:,2), v_out(:,3))
hold on
xlabel('x3')
ylabel('x2')
hold off
