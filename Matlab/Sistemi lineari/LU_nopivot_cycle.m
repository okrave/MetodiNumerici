function  A=LU_nopivot_cycle(A)
% Input: matrice A da decomporre
% Output: fattorizzazione A=LU in forma compatta
%  la U è salvata nella parte triangolare superiore della A
%  mentre tril(A) contiene le informazioni per ricostruire la L
%  ovvero L=eye(N)+tril(A,-1)
%
% Prima versione, con cicli for, senza pivoting

n=max(size(A)); % assume che A sia quadrata...

for k=1:(n-1)
    for i=k+1:n 
        A(i,k) = A(i,k)/A(k,k); % calcolo i moltiplicatori
        for j=k+1:n     % trasformo le righe
            A(i,j) = A(i,j) - A(i,k) * A(k,j);
        end
    end
end

