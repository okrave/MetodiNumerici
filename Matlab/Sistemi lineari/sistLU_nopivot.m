function x = sistLU_nopivot(A,b)

% Risolve il sistema lineare A*x=b 
% Tale sistema è equivalente a L*U*x=b
% dove U=triu(LU) e 
% L=eye(n)+tril(LU,-1)

% Risolviamo prima il sistema tr. infer. L*y=b
% col metodo di sostituzione in avanti e poi quello 
% tr. sup. U*x=y col metodo di sostituzione all'indietro
% NOTA: non occorre formare esplicitamente le matici L,U


n=max(size(A));  %assumo che LU sia quadrata!
A = LU_nopivot(A);

% Risolvo il sistema L*y=b
y=b; % y(1) è già corretto: y(1)=b(1)/L(1,1)=b(1)
for i=2:n
    y(i) = b(i) - A(i,1:(i-1))*y(1:i-1); 
    % dovrei dividere per L(k,k) che però è 1
end

% Risolvo il sistema U*x=y
x=y; % Serve solo a dimensionare la variabile x
     % Questa volta U(i,i) non è 1...
for i=n:-1:1 %ciclo all'indietro
    x(i) = (y(i) - A(i,(i+1):n)*x((i+1):n)) / A(i,i);
end
%NB Non è necessario definire x e y; potrei operare direttamente su b
