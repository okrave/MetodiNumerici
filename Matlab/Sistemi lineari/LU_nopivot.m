function [L,U] = LU_nopivot(A)
    n = length(A);
    L = zeros(size(A));
    
    for i=1:n
        pivot = A(i,i);
        for j=i+1:n
            m = (1/pivot) * A(j,i);
            L(j,i) = L(j,i) + m;
            A(j,:) = A(j,:) - (A(i,:).*m);                
        end
    end
    
    L = L + diag(ones(1,length(A)));
    U = A;