clear all;
close all;

A = [1,2,1,1;1,1,3,3;3,3,12,10;-2,-3,2,-4];

[L,U,P] = PA_LU_factorization(A)

%Ricordiamo che per la risoluzione del sistema abbiamo:
% Ly = Pb
% Ux = y

b = randi([-2,2],1,length(A));

B = P*b';

y = forwardSubstitution(L,B')

x = backwardSubstitution(U,y)

[A,B] = gaussMethod(A,b);

x = backwardSubstitution(A,B)