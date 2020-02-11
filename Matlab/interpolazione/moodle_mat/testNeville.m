close all;
clear all;

x1 = [0,1,2,4];
y = [1,-1,3,5];
plot(x1,y,'r o');
hold on
axes=linspace(-2,7,10);
plot(zeros(10),axes,'k',axes,zeros(10),'k');


DD = diffDiv(x1,y)

xx = linspace(0,4);
nevilleOut = neville(DD,xx);
plot(xx,nevilleOut,'b');

f =@(x) -x.^3 + (6.*x.^2) - (7.*x) + 1;
plot(xx,f(xx),'-- y');
legend('Dati','Assi','polinomio neville','polinomio Newton');
