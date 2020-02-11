close all;
clear all;

N = 8;
%Funzione di qui dovrò trovare l'interpolazione
f = @(x) sin(x);

x_input = linspace(0,2*pi,N);
y_output = f(x_input);

%Calcolo polinomio interpolatore
DD = diffDiv(x_input,y_output);

N_nodi = 1000;
x_neville = linspace(0,2*pi,N_nodi);

%output su 1000 punti della funzione interpolatrice di seno
y_neville = neville(DD,x_neville);


plot(x_neville,f(x_neville));
hold on
plot(x_neville,y_neville,'-- y');

% output su 1000 punti della funzione seno
y_sin = f(x_neville);

distance = abs(y_sin - y_neville);

[distanceMax,indices] = max(distance);
distanceMax






