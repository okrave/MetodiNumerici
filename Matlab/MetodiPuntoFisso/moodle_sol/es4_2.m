clear all, close all
phi=@(t) -0.5*cos(t).*exp(-t);
figure(1);
fplot(phi , [-2,0],'b');
hold on
fplot(@(x) x, [-2,0] ,'k--');
legend('y=phi(x)','y=x')

[x,nit]=puntofisso(phi,-1,1e-3)



phider=@(t) 0.5*(sin(t)+cos(t)).*exp(-t)
figure(2)
tt=linspace(-10,2,100000);
semilogy(tt,abs(phi(tt)-tt), tt,abs(phider(tt)),tt,1+0*tt)
grid on
xlabel 'x'
legend('abs(phi(x)-x)','derivata di phi')