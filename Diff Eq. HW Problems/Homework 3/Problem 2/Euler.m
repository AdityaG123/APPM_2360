% Aditya Gopalan
% APPM 2360 Matlab Homework 3
% Due: Thursday, September 19, 2019

%Problem 2 - function

function [output] = Euler(to, yo, tf, h, f)
count = 1;
matrix = zeros(1, (tf-to)/h);
for i = to:h:tf
    matrix(count) = yo;
    yf = yo + h*f(i, yo);
    yo = yf;
    count = count + 1;
end
output = matrix;
end
