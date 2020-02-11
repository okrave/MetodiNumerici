%La funzione pivoting parziale utilizza sempre l'algoritmo di gauss ma
%sceglie intelligentemente il pivot, infatti per non cadere nel richio di
%trovare un elemento diagonale uguale a 0, prima cerca il massimo sulla
%colonna pivot (es A(1,1) nella colonna 1 cerca il massimo) e cambia la
%riga con la colonna massima con la riga di cui si dovrebbe fare il pivot.
% [1,2,3;2,1,0;3,4,1] dopo la 1 iterazione la nostra matrice diventa
% [3,4,1,2,1,0,1,2,3] scambio la 3 riga contenente il valore più alto
% colonna 1 con la riga 1. Il pivot sarà quindi A(1,1) = 3 e continuo con
% l'algoritmo di Gauss

function [A,B] = pivotingParziale(A,B)
    n = length(B);
    %Support
    %matrice di permutazione

    for i=1:n
        
        %cerchiamo il massimo per ogni colonna (ricordando che a noi interessa solo la i-esima cioè elemento del pivot)    
        [m,index] = max(abs(A(i:n,i)));
        index = index + i-1;
        if index ~= i
            %swap della riga m con la riga a
            Supp = A(i,:);     
            A(i,:)= A(index,:);
            A(index,:) = Supp;
            %swap termine noto;
            Supp =B(i);
            B(i) = B(index);
            B(index) = Supp;           
        end         
        pivot = A(i,i);
        for j=i+1:n 
            m = (1/pivot) * A(j,i);
            A(j,:)= A(j,:) - (A(i,:).*m);
            B(j) = B(j) -B(i)*m;            
        end  
    end
        
    

    