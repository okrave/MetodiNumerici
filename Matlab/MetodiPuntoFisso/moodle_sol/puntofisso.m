function [x,nit,INC,L] = puntofisso(phi,x0,toll,L,maxIt)
% function [x,nit,res] = puntofisso(phi,x0,toll,L,maxIt)
%Input:
% * phi : funzione di cui cercare il punto fisso
% * x0  : valore d'innesco
% * toll: tolleranza
% * L   : valore da usare nella stima d'errore
%         (stimato dal metodo se vuoto o non viene passato)
% * maxIt: numero massimo di iterazioni
%         (default 1000)
%Output:
% * x  : ultima iterata calcolata
% * nit: numero di iterazioni
% * INC: elenco degli incrementi

if (nargin<5)
  maxIt=1000;
end
if (nargin<4) || (isempty(L))
  stimaL = true;
  L=1-eps; %il max valore per un metodo convergente...
else
  stimaL = false;
end
nit=0; 
INC=[]; %vettore vuoto
stima=2*toll;
if (stimaL)
  x1=x0; %iterazione precedente a quella salvata in x0
end
while (stima>toll) && (nit<maxIt)
  x=phi(x0);
  inc=x-x0;
  stima = abs(inc)/(1-L);
  if (stimaL)&&(nit>1)
    L = min(abs((x-x0)/(x1-x0)) , 1-eps);
    x1=x0;
  end    
  x0=x;
  if (nargout>=3)
    INC(end+1) = inc;
  end
  nit=nit+1;
end
figure(1); 
clf 
semilogy(abs(INC));
hold on

