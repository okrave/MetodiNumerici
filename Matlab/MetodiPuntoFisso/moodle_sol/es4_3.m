clear all, close all
f=@(t) -0.5*cos(t).*exp(-t)-t;
fder=@(t) 0.5*(sin(t)+cos(t)).*exp(-t)-1;

[x,nit]=puntofisso(@(t) t-f(t)./fder(t),-1,1e-3 ,0)
[x,nit]=puntofisso(@(t) t-f(t)./fder(t),-5,1e-3 ,0)
[x,nit]=puntofisso(@(t) t-f(t)./fder(t),-8,1e-3 ,0)
[x,nit]=puntofisso(@(t) t-f(t)./fder(t),-10,1e-3,0)
