clc
clear all
close all

x = 1;
fprintf('The sum is converging to: %.2f\n',f(1))
x = -2:0.5:5;
f_vec = [];
for i = x
   f_vec = [f_vec; f(i)];
end

plot(x, f_vec)