clc
clear all
close all

A = [.7 .4 0 .2;
    .3 0 0 0;
    0 .3 0 0;
    0 .3 1 .8;];
s = [1;0;0;0];

fifth = A^5;
final = fifth * s

%% 3.1 1
A = [.7 .4 0 .2;
    .3 0 0 0;
    0 .3 0 0;
    0 .3 1 .8;];
prob = [1;0;0;0];

s = zeros(1,31); s(1) = 1;
e = zeros(1,31); e(1) = 0;
i = zeros(1,31); i(1) = 0;
r = zeros(1,31); r(1) = 0;

[V,D] = eig(A);
V = V(:,3);
V = V/sum(V);
Err = zeros(length(V),32);

for n = 1:31
    x = A^(n)*prob;
    x = x/sum(x);
    Err(:,n) = abs(x-V);
    s(n+1) = x(1);
    e(n+1) = x(2);
    i(n+1) = x(3);
    r(n+1) = x(4);
end
figure('Name','Problem 1, 3.1')
plot(0:31,s)
hold on
plot(0:31,e)
plot(0:31,i)
plot(0:31,r)
xlim([0 31]);
ylim([0 1]);
xlabel('Days');
ylabel('Probability of State');
legend('Susceptable','Exposed','Infected','Recovery');
title('Problem 1, 3.1')
hold off;
stationary1 = x


figure('Name','Semilogy: Error');
semilogy(Err(1,:));
hold on
semilogy(Err(2,:));
semilogy(Err(3,:));
semilogy(Err(4,:));
hold off
xlabel('Day')
ylabel('Error')
title('Semilogy: Error');
legend('Susceptable','Exposed','Infected','Recovery');


%% 3.1 2

A = [.7 .4 0 .2;
    .3 0 0 0;
    0 .3 0 0;
    0 .3 1 .8;];
prob = [.15;.85;0;0];

s = zeros(1,31); s(1) = .15;
e = zeros(1,31); e(1) = .85;
i = zeros(1,31); i(1) = 0;
r = zeros(1,31); r(1) = 0;

for n = 1:31
    x = A^(n)*prob;
    x = x/sum(x);
    s(n+1) = x(1);
    e(n+1) = x(2);
    i(n+1) = x(3);
    r(n+1) = x(4);
end
figure('Name','Problem 2, 3.1')
plot(0:31,s)
hold on
plot(0:31,e)
plot(0:31,i)
plot(0:31,r)
xlim([0 31]);
ylim([0 1]);
xlabel('Days');
ylabel('Probability of State');
legend('Susceptable','Exposed','Infected','Recovery');
title('Problem 2, 3.1')
hold off;
stationary2 = x

%% 3.1 5
SEIRIm = [ .7 .4 0 .2 0 ;
    .3 0 0 0 0 ;
    0 .3 0 0 0 ;
    0 .3 1 .6 0 ;
    0 0 0 .2 1];

suscept = [1;0;0;0;0];

s = zeros(1,250); s(1) = 1;
e = zeros(1,250); e(1) = 0;
i = zeros(1,250); i(1) = 0;
r = zeros(1,250); r(1) = 0;
m = zeros(1,250); m(1) = 0;
for n = 1:250
    x = SEIRIm^(n)*suscept;
    x = x/sum(x);
    s(n+1) = x(1);
    e(n+1) = x(2);
    i(n+1) = x(3);
    r(n+1) = x(4);
    m(n+1) = x(5);
end
figure('Name','Problem 5, 3.1')
plot(0:250,s)
hold on
plot(0:250,e)
plot(0:250,i)
plot(0:250,r)
plot(0:250,m)
xlim([0 250]);
ylim([0 1]);
xlabel('Days');
ylabel('Probability of State');
legend('Susceptable','Exposed','Infected','Recovery','Immune');
title('Problem 5, 3.1')
hold off
stationary3 = x

%% 4.1

SEIRVM = [ .7 0 0 .2 0 0;
    .3 0 0 0 0 0;
    0 .5 0 0 0 0;
    0 .5 1 .8 0 0;
    0 0 0 0 .25 0;
    0 0 0 0 .75 1];

suscept = [1;0;0;0;0;0];

% 3
s = zeros(1,31); s(1) = 1;
e = zeros(1,31); e(1) = 0;
i = zeros(1,31); i(1) = 0;
r = zeros(1,31); r(1) = 0;
v = zeros(1,31); v(1) = 0;
m = zeros(1,31); m(1) = 0;
for n = 1:31
    x = SEIRVM^(n)*suscept;
    x = x/sum(x);
    s(n+1) = x(1);
    e(n+1) = x(2);
    i(n+1) = x(3);
    r(n+1) = x(4);
    v(n+1) = x(5);
    m(n+1) = x(6);
end
figure('Name','Problem 3, 4.1')
plot(0:31,s)
hold on
plot(0:31,e)
plot(0:31,i)
plot(0:31,r)
plot(0:31,v)
plot(0:31,m)
xlim([0 31]);
ylim([0 1]);
xlabel('Days');
ylabel('Probability of State');
legend('Susceptable','Exposed','Infected','Recovery','Vaccinated','Immune');
title('Problem 3, 4.1')
hold off
stationary4 = x


%% 4.1 4

SEIRVM = [ .7 0 0 .2 0 0;
    .3 0 0 0 0 0;
    0 .5 0 0 0 0;
    0 .5 1 .8 0 0;
    0 0 0 0 .25 0;
    0 0 0 0 .75 1];

tovaxornottovax = [.33;0;0;0;.66;0];

s = zeros(1,31); s(1) = .33;
e = zeros(1,31); e(1) = 0;
i = zeros(1,31); i(1) = 0;
r = zeros(1,31); r(1) = 0;
v = zeros(1,31); v(1) = .66;
m = zeros(1,31); m(1) = 0;
for n = 1:31
    x = SEIRVM^(n)*tovaxornottovax;
    x = x/sum(x);
    s(n+1) = x(1);
    e(n+1) = x(2);
    i(n+1) = x(3);
    r(n+1) = x(4);
    v(n+1) = x(5);
    m(n+1) = x(6);
end
figure('Name','Problem 4, 4.1')
plot(0:31,s)
hold on
plot(0:31,e)
plot(0:31,i)
plot(0:31,r)
plot(0:31,v)
plot(0:31,m)
xlim([0 31]);
ylim([0 1]);
xlabel('Days');
ylabel('Probability of State');
legend('Susceptable','Exposed','Infected','Recovery','Vaccinated','Immune');
title('Problem 4,4.1')
hold off
stationary5 = x