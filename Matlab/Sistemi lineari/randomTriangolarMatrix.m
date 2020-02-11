%Funzione che ritorna una matrice triangolare random nxn
function A = randomTriangolarMatrix(type,n)

    A = randi([1,10],n);    
    
    switch (type)
        case 'inf'
            for i=1:length(A)   
                A(i,i+1:length(A)) = 0;    
            end 
        case 'sup'
            for c=length(A):-1:1
                A(c,1:c-1) = 0;
            end
    end
 