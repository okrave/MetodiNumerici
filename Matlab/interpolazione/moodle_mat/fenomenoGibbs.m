close all;
clear all;
f = @(x) sign(x);

numberOfNode = [4,6,8,11];
figure(1);
for i=1:length(numberOfNode)
    N = numberOfNode(i);
    subplot(2,2,i);
    %Nodi equispaziati
    x_equi = linspace(-5,5,N);
    y_equi = f(x_equi);

    DD_equi = diffDiv(x_equi,y_equi)

    x_neville = linspace(-5,5,1000);
    neville_equi = neville(DD_equi,x_neville);

    plot(x_neville,f(x_neville),'b');
    hold on;
    plot(x_neville,neville_equi,'-- y');

    %Nodi non equispaziati
    x_noequi = -5*cos(pi * (0:N-1)/(N-1) );
    y_noequi = f(x_noequi);
    DD_noequi = diffDiv(x_noequi,y_noequi);
    neville_noequi = neville(DD_noequi,x_neville);
    plot(x_neville,neville_noequi,'. k');
    legend('funzione','interpolazione nodi equidist','interpolazione nodi non equidist')

    
end

%Nodi equispaziati
x_equi = linspace(-5,5,N);
y_equi = f(x_equi);

DD_equi = diffDiv(x_equi,y_equi)

x_neville = linspace(-5,5,1000);
neville_equi = neville(DD_equi,x_neville);

plot(x_neville,f(x_neville),'b');
hold on;
plot(x_neville,neville_equi,'-- y');

%Nodi non equispaziati
x_noequi = -5*cos(pi * (0:N-1)/(N-1) );
y_noequi = f(x_noequi);
DD_noequi = diffDiv(x_noequi,y_noequi);
neville_noequi = neville(DD_noequi,x_neville);
plot(x_neville,neville_noequi,'. k');
legend('funzione','interpolazione nodi equidist','interpolazione nodi non equidist');
title(sprintf('Usando %d nodi',N));
