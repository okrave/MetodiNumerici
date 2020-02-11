function [L,U,P] = PA_LU_factorization(A)
    n = length(A);
    L = eye(n);
    P = eye(n);
    U = A;
    for k=1:n
        [pivot,index] = max(abs(U(k:n,k)));
        index = index+k-1;
        if index ~= k
            %swap la riga m con k di U
            supp = U(k,:);
            U(k,:) = U(index,:);
            U(index,:) = supp;
            %swap la riga m con k di P
            supp = P(k,:);
            P(k,:) = P(index,:);
            P(index,:) = supp;
            if k >= 2                
                temp=L(k,1:k-1);
                L(k,1:k-1)=L(index,1:k-1);
                L(index,1:k-1)=temp;                
            end            
        end
        for i=k+1:n
            m = U(i,k) * (1/U(k,k));
            L(i,k)= m ;
            U(i,:)=U(i,:)-L(i,k)*U(k,:);
        end
    end
    