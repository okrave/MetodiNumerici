function x = forwardSubstitution(A,B)
    x = zeros(1,length(B));
    x(1)= [B(1)/ A(1,1)];
    for i=2:length(A)
        x(i) = (B(i) - (sum(x.*A(i,:)))) * (1/A(i,i));

    end

