clear all;
close all;

A = randi([2,10],4);
b = randi([2,10],1,4);

[L,U] = LU_nopivot(A);

%Verifichiamo che sia uguale alla matrice di partenza
A == L*U;

%Risolviamo il sistema ricordando che Ly = b Ux = y

%Risolviamo per primo Ly = b ricordando che L è una matrice triangolare
%inferiore, quindi utiliziamo forwardSubstitution.

y = forwardSubstitution(L,b);

%Risolviamo Ux = y ricordando che U è una matrice triangolare superiore,
%quindi utilizziamo backwardSubstitution.

x = backwardSubstitution(U,y);

[X_ext,b_ext] = gaussMethod(A,b) ;

x1 = backwardSubstitution(X_ext,b_ext);

x
x1




