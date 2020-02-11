%close all;
%clear all;

f = @(x) 1./(1+25*x.^2);

N_nodi = 11;

%nodi equispaziati
x_equis = linspace(-5,5,N_nodi);
y_equis = f(x_equis);

DD = diffDiv(x_equis,y_equis);

x_neville = linspace(-5,5,1000);
y_neville = neville(DD,x_neville);

plot(x_neville,f(x_neville),'b');
hold on;
plot(x_neville,y_neville,'-- y');


%nodi non equispaziati
x_noEquis = -5*cos(pi * (0:N_nodi-1)/(N_nodi-1) );
y_noEquis = f(x_noEquis);

DD_no = diffDiv(x_noEquis,y_noEquis);
y_neville_noEquis = neville(DD_no,x_neville);

plot(x_neville,y_neville_noEquis,'k .');
