function [output] = Euler(to,yo,tf,h,f)
%EULER Summary of this function goes here
%   Detailed explanation goes here
index = 1;
for i = to:h:tf
    journey(index) = yo;
    yf = yo + h*f(i,yo);
    yo = yf;
    index = index + 1;
end
output = journey;
end

