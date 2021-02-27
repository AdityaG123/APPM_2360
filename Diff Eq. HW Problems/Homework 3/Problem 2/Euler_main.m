% Aditya Gopalan
% APPM 2360 Matlab Homework 3
% Due: Thursday, September 19, 2019

%Problem 2 - main

f = @(t,y) t*(y-2)*(log(abs(y))-1);
h = 0.01;
to = -3;
tf = 4;
yo = 2.5;
y1 = 3.2;
y2 = 1.2;
y3 = -2.73;
figure('name', 'Problem 2')
hold on
test = Euler(to, yo, tf, h, f);
plot(-3:h:tf,test, '-b')
test2 = Euler(to, y1, tf, h, f);
plot(-3:h:tf,test2, '-r')
test3 = Euler(to, y2, tf, h, f);
plot(-3:h:tf,test3, '-g')
test4 = Euler(to, y3, tf, h, f);
plot(-3:h:tf,test4, '-p')
xlabel('t') 
ylabel('y')
legend('y0 = 2.5', 'y1 = 3.2', 'y2 = 1.2', 'y3 = -2.73')
hold off