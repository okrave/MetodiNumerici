clear all;
close all;
A= [1,2,3;2,5,1;3,2,4];
B = [1,2,3];


%Parziale
%[X,Y] = pivotingParziale(A,B);

%Totale
[X,Y] = pivotingTotale(A,B)

backwardSubstitution(X,Y)
