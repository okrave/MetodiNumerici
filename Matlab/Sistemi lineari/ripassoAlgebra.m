clear all;
close all;

n=2;
ones = ones(n);
Id = diag(ones);

%crea una matrice nxn random di valori compresi tra -10 e 10
X = randi([-10,10],n,n);
W = randi([-10,10],n,n);

% calcola
R = X * W;



size(R)

Y = X .* (Id);

%matrici
p = [1,2;
    3,4]
c = [2,4,2;
    3,1,2]

%vettori

b = [2,3]
d = [3,2]

p1 = p^(-1)

p*p1






