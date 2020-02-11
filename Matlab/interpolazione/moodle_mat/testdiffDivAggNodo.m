clear all;
close all;
x = [0,1,2,4];
y = [1,-1,3,5];

DD = diffDiv(x,y)


plot(DD.xn,DD.d,'o');
hold on;
x_neville = linspace(0,7);
neville_out = neville(DD,x_neville);

plot(x_neville,neville_out);

GG = diffDiv(x(1:3),y(1:3))

GG_aggNodo = diffDivAggNodo(GG,x(4),y(4))

neville_out2 = neville(GG_aggNodo,x_neville);
plot(x_neville,neville_out2,'-- y');