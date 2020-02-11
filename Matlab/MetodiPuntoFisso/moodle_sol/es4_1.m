clear all, close all
phi=@(t) cos(t);
TOLL=10.^(0:-1:-10);
%oppure TOLL=logspace(0,-10,11);
IT=[];
for toll=TOLL
  [x,nit]=puntofisso(phi,1,toll);
  IT(end+1)=nit;
end
semilogx(TOLL,IT,'o-')
xlabel 'tolleranza'
ylabel 'iterazioni'
