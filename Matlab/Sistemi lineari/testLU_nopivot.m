clear all;
close all;

%Matrici di cui so la soluzione [2,1,-1]
%C = [1,-2,1;2,1,1;1,8,-2];
%D = [-1,4,12];

%[L,U,BB] = LU_nopivot(C,D)

%backwardSubstitution(U,BB)

%Matrici random
A = randi([2,15],4)
B = randi([2,15],1,length(A));

%L contiene gli m mentre U contiene la matrice di output di gauss senza
%pivot
[L,U] = LU_nopivot(A)

%testiamo se il metodo LU funziona A = L*U 
MyMatrix = L*U;
MyMatrix == A %ritorna una matrice nxn in cui vi è 1 se sono uguali 0 altrimenti

%Ricordiamo adesso che è possibile risolvere i due sistemi e quindi Ax = b
%in questo modo: Ly = b Ux = y;
%Quindi per primo risolviamo Ly = b




