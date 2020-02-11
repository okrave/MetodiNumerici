%Il metodo di Gauss riduce una qualsiasi matrice in una matrice
%trinagolare. A matrice coeff, B termini noti
function [A,B] = gaussMethod(A,B)
    n = length(B);
    for i=1:n
        pivot = A(i,i);
        for j=i+1:n 
            m = (1/pivot) * A(j,i);
            A(j,:)= A(j,:) - (A(i,:).*m);
            B(j) = B(j) -B(i)*m;
        end   
    end
    X = A;



 
    