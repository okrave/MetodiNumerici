function p=neville(DD,xx)
%function p=neville(DD,xx)
% INPUT:
% DD (struct)
%    DD.xn=nodi e
%    DD.d=coeff di un polinomio nella forma di Newton
% xx= punto/i dove valutare il polinomio
% OUTPUT: valore/i del polinomio nel/i punto/i xx
% ALGORITMO: Neville
N=length(DD.d);
p=0*xx + DD.d(N); %p=costante=DD.d(N), lungo quanto xx
for k=N-1:-1:1
    p = p.*(xx-DD.xn(k)) + DD.d(k);
end
