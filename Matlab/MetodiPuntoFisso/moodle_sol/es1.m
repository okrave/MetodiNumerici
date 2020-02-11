clear all
phi=@(t) cos(t);
[x,nit,INC]=puntofisso_0(phi,1,10);
x
figure(1); clf
semilogy(1:10 , abs(INC) , 'b.-');
hold on
[x,nit,INC]=puntofisso_0(phi,1.2,10);
x
semilogy(1:10 , abs(INC) , 'k.-');
[x,nit,INC]=puntofisso_0(phi,0.5,10);
semilogy(1:10 , abs(INC) , 'g.-');
x
figure(2); clf
phider=@(t) -sin(t);
fplot(phider , [0,2],'b');
hold on
plot(x,phider(x),'b*')
grid on

figure(1);
phitilde=@(t) (t.^2+2)./(2*t);
[x,nit,INC]=puntofisso_0(phitilde,1,10);
x
semilogy(1:10 , abs(INC) , 'b.--');
[x,nit,INC]=puntofisso_0(phitilde,1.2,10);
x
semilogy(1:10 , abs(INC) , 'k.--');
[x,nit,INC]=puntofisso_0(phitilde,0.5,10);
x
semilogy(1:10 , abs(INC) , 'g.--');

phitildeder=@(t) (2*t*2.*t-(t.^2+2)*2)./(4*t.^2);
figure(2);
fplot(phitildeder , [0.7,1.7],'r');
plot(x,phitildeder(x),'ro')

figure(1);
xlabel('iterazioni');
ylabel('incremento');
legend('caso 1, x0=1','caso 1, x0=1.2','caso 1, x0=0.5',...
       'caso 2, x0=1','caso 2, x0=1.2','caso 2, x0=0.5')

figure(2);
xlim([0,1.7])
legend('@phider','phider(limite)',...
       '@phitildeder','phitildeder(limite)',...
       'location','southeast')