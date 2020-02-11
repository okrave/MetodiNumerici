function x = backwardSubstitution(A,B)

    n = length(B); %Uguale a length(A)
    x = zeros(1,n);
    x(n) = B(end) * (1/A(n,n));
    for i = (n-1):-1:1
        x(i) = (1/A(i,i)) * (B(i) - sum(x.*A(i,:)));
    end