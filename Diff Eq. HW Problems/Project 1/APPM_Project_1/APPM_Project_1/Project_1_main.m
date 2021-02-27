clear all
close all
clc

% Problem 2.1 Part 9
dx = @(~,x) exp(-x+1)-1;
x = @(t) log(exp(1)-(exp(1)-exp(2))./(exp(t)));
to = 0; xo = 2; h1 = 1; h2 = .1; h3 = .01; tf = 10;
accurate = Euler(to,xo,tf,h1,dx); 
more_accurate = Euler(to,xo,tf,h2,dx);
most_accurate = Euler(to,xo,tf,h3,dx);
figure("Name","Part 2.1__9");
plot(0:h1:10,accurate);
hold on;
plot(0:h2:10,more_accurate);
plot(0:h3:10,most_accurate);
plot(0:h3:10,x(0:h3:10),'LineWidth', 1.1);
ylim([0 2]);
hold off;
legend("h=1","h=.1","h=.01",'analytic');
%Problem 2.1 Part 10
t1 = 0:1:10; x1 = 2:-.1:1;
t2 = 0:.1:10; x2 = 2:-.01:1;
t3 = 0:.01:10; x3 = 2:-.001:1;
numsol1 = x(t1); %actual value 
numsol2 = x(t2);
numsol3 = x(t3);
error1 = abs(numsol1-accurate); %absolute value of the difference between actual and approx
error2 = abs(numsol2-more_accurate);
error3 = abs(numsol3-most_accurate);
figure("Name","Part 10");
plot(t1,error1);
hold on;
plot(t2,error2);
plot(t3,error3);
legend('analytic - h=1', 'analytic - h=.1','analytic - h=.01');
hold off
%Part 11
totErr1 = sum(error1*1);
totErr2 = sum(error2*.1);
totErr3 = sum(error3*.01);
fprintf('The total error for: h=1 is %d, h=.1 is %d, h=.01 is %d\n',totErr1,totErr2,totErr3);
%Part 12
steps = 1:10000;
ErrTotFun = @(N) sum((10./N).*(Euler(0,2,10,10./N,dx)-x(0:10/N:10)));
index = 1; TotErr = zeros(1,length(steps));
while (index<=steps(end))
    TotErr(index) = ErrTotFun(steps(index));
    index = index + 1;
end
figure('Name','Total Error vs Steps');
loglog(steps,abs(TotErr));
%Problem 3.3
dxe = @(t,x) (1./x-1)./sqrt(1./x);
dxy = @(t,x) 2*(1./x-1)./sqrt(1./x);
to1 = 0; ro=2;
to2 = 1; h =.1;
timeg = 1:.1:10;
bad_guy = Euler(to1,ro,10,h,dxe);
the_hero = Euler(to2,ro,10,h,dxy);
figure('Name','Saving the Bad Guy');
length(bad_guy);
length(the_hero);
length(bad_guy(11:end));
distance = abs(the_hero-bad_guy(11:end));
plot(0:.1:10,bad_guy,'g');
hold on
plot(timeg,the_hero,'r');
plot(timeg,distance,'b');
legend('bad guy','hero','distance between the two');
collide = find(distance(1:40)<=.007);
disp("If the hero's speed is twice the bad guy's, they would collide at x = ");
disp(the_hero(collide));
disp('at time = ');
disp(timeg(collide));
hold off
figure('Name','Saving the Bad Guy Part 2: C=1.2');
hold on;
dxy2 = @(t,x) 1.2*(1./x-1)./sqrt(1./x);
the_hero2 = Euler(to2,ro,10,h,dxy2);
distance2 = abs(the_hero2-bad_guy(11:end));
plot(0:.1:10,bad_guy,'g');
plot(timeg,the_hero2,'r');
plot(timeg,distance2,'b');
legend('bad guy','hero','distance between the two');
hold off;
collide2 = find(distance2(1:40)<=.002);
disp("If the hero's speed is 1.2 times the bad guy's, they would collide at x = ");
disp(the_hero2(collide2));
disp('at time = ');
disp(timeg(collide2));






