function DD = diffDivAggNodo(DD,xnew,ynew)
%function DD = diffDivAggNodo(DD,xnew,ynew)
% INPUT:
% DD: struct restitutita da diffDiv con i campi
%           DD.xn = nodi interpolazione
%           DD.d  = coeff poli interpolatore nella forma di Newton
% xnew,ynew: ascissa e ordinata del nuovo dato
% OUTPUT:
%  DD aggiornato con la nuova sequenza dei nodi
%     e dei coefficienti del polinomio interpolatore
%     dei dati gia` interpolati da DD in input e 
%     del nuovo dato (xnew,ynew)

N=length(DD.xn);
DD.xn=[xnew,DD.xn];
DD.d= [ynew,DD.d];
for j=2:N+1
    DD.d(j)= (DD.d(j)-DD.d(j-1))/(DD.xn(j)-DD.xn(1));
end