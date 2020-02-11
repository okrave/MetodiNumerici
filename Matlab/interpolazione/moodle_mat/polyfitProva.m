clear all;
close all;
x = [1,2,3,4,5,6,7];
y = [1,3,1,3,1,3,1];
plot(x,y,'o');
hold on;
c = polyfit(x,y,length(x)-1);
f = @(x) polyval(c,x);
x1= linspace(1,length(x));
plot(x1,f(x1));

