A = randi([2,10],3);

B = randi([2,5],1,length(A));
[A_new,B_new] = gaussMethod(A,B)

backwardSubstitution(A_new,B_new)