
function [x,nit,INC] = puntofisso_0(phi,x0,maxIt)

% function [x,nit,res] = puntofisso(phi,x0,maxIt)
%Input:
% * phi: funzione di cui cercare il punto fisso
% * x0 : valore d'innesco
% * maxIt: numero massimo di iterazioni
%Output:
% * x  : ultima iterata calcolata
% * nit: numero di iterazioni
% * INC: elenco degli incrementi
retta = @(x) x;
input = linspace(-5,5);
%figure(1);clf
%plot(input,retta(input),input,phi(input));
%hold on
%plot(input,zeros(length(input),1),'k',zeros(length(input),1),linspace(-5,5,length(input)),'k');

nit=0; 
INC=[]; %vettore vuoto

while (nit<maxIt) 
  x=phi(x0);  
  t = linspace(x0,x,100);
  %plot(x0*ones(100,1),t,'b')
  %plot(linspace(x0,x),x*ones(100,1),'b');
  inc=x-x0;
  x0=x;
  if (nargout>=3)
    INC(end+1) = inc;
  end
  nit=nit+1;
end



