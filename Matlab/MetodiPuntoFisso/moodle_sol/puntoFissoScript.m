close all;
clear all;
%Iterazioni massime
maxN = 10;

%Prima funzione
f_partenza = @(x) cos(x) - x;
%Phi prima funzione
f = @(x) cos(x);
%plot prima funzione
figure(1); clf
subplot(2,1,1);
[x,nit,INC]=puntofissoGrafico(f,1,maxN);
subplot(2,1,2);
input = linspace(-10,10);
plot(input,f_partenza(input),input,zeros(length(input),1),'k',zeros(length(input),1),linspace(-10,10,length(input)),'k');

%Seconda funzione
g_partenza =@(x) (x.^2 + 2)./(2.*x) - x;
%Phi seconda funzione
g =@(x) (x.^2 + 2)./(2.*x);
%plot seconda funzione
figure(3);
subplot(2,1,1);
plot(input,g_partenza(input),input,zeros(length(input),1),'k',zeros(length(input),1),linspace(-10,10,length(input)),'k');
subplot(2,1,2);
[x,nit,INC]=puntofisso_0(g,1,maxN);


%Plot Incrementi prima funzione
[x,nit,INC]=puntofisso_0(f,1,maxN);
x
figure(2); clf
semilogy(1:length(INC) , abs(INC) , 'b.-'); 
hold on

[x,nit,INC]=puntofisso_0(f,1.2,maxN);
x
semilogy(1:length(INC) , abs(INC) , 'k.-');

[x,nit,INC]=puntofisso_0(f,0.5,maxN);
x
semilogy(1:length(INC) , abs(INC) , 'g.-');



%Plot incrementi seconda funzione
[x,nit,INC]=puntofisso_0(g,1,maxN);
semilogy(1:length(INC) , abs(INC) , '.-'); 
x

[x,nit,INC]=puntofisso_0(g,1.2,maxN);
semilogy(1:length(INC) , abs(INC) , '.-'); 
x

[x,nit,INC]=puntofisso_0(g,0.5,maxN);
semilogy(1:length(INC) , abs(INC) , '.-'); 
x




