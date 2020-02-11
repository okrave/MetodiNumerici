function [A,B] = pivotingTotale(A,B)
    
    n = length(B)
    for i = 1:n        
        if (i ~= n)
                %disp('A prima degli swap')
                %A
            [m,index] = max(A(i:end,:));
            %In quanto la matrice in considerazione ha grandezza (i,n) gli
            %indici andranno quindi da 0 a i
            index = index + (ones(1,length(index)).*(i-1));
            [mm,index2] = max(m);
            maxColInd = index2;
            %l'elemendo max si trova in A(index(maxcol),maxcol)
            A(index(maxColInd),maxColInd)
            %swap colonna
            supp = A(:,i);
            A(:,i) = A(:,maxColInd);
            A(:,maxColInd) = supp;
                %disp('swap colonna')
                %A
            %swap riga
            Supp = A(i,:);     
            A(i,:)=A(index(maxColInd),:);
            A(index(maxColInd),:) = Supp;
                %disp('swap riga')
                %A
                   %swap termine noto;
            Supp =B(i);
            B(i) = B(index(maxColInd));
            B(index(maxColInd)) = Supp;
        end
        pivot = A(i,i);    
        for j=i+1:n 
            m = (1/pivot) * A(j,i);
            A(j,:)= A(j,:) - (A(i,:).*m)
            B(j) = B(j) -B(i)*m;
        end           
    end