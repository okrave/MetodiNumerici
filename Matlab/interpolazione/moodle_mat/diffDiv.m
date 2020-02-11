function DD = diffDiv(x,y)
%function DD = diffdiv(x,y)
% INPUT: vettori x e y della stessa lunghezza
% OUTPUT: struct con
%  DD.xn = vettore dei nodi (=x passato in input)
%  DD.d  = vettore dei coeff di Newton del polinomio interpolatore
% ALGORITMO: calcolo delle differenze divise
N=length(x);
DD.xn=x; %Definisce una struct con un campo 'xn'
DD.d=y;  %Aggiunge alla struct un campo 'd',
         % inizializzato ad y
for it=2:N
   %differenze divise di ordine (it-1)
   for j=N:-1:it
       DD.d(j)= (DD.d(j) - DD.d(j-1)) / (x(j) - x(j-it+1));
   end
end
