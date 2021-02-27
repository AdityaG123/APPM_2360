% Aditya Gopalan
% APPM 2360 Matlab Homework 2
% Due: Thursday, September 12, 2019

% Problem 1:
x = [-10:0.1:8];
f = (x-6).*((x.^2)-1).*(x+8);
figure(1)
plot(x,f)
hold on
index = find(f==0);
plot(x(index), f(index), "x")
xlabel('x') 
ylabel('f(x)')
hold off

% Problem 2:
s = 0;
for k = 0:100
    s = s + ((-3)^-k)/(2*k+1);
end
s = s* sqrt(12);
disp('Problem #2 - part (b):')
disp('It is approaching pi')

% Problem 3:
f = @(k,t) k.*exp(-t.^2);
t = linspace(-4,4);
figure(2)
plot(t,f(1/2,t))
hold on
plot(t,f(1,t), 'r')
plot(t,f(2,t), 'g')
xlabel('t') 
ylabel('f(t)')
legend('k = 1/2', 'k=1', 'k=2')
hold off