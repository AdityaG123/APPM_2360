% Aditya Gopalan
% APPM 2360 Matlab Homework 5
% Due: Thursday, October 17, 2019
% Problem 3 - Duffing Equation Function

function vprime = duffing(t, v)
    x = v(1);
    y = v(2);
    
    vprime = zeros(2,1);
    
    vprime(1) = y;
    vprime(2) = -0.3*y + x - x.^3 + 0.37*cos(1.2*t);
end