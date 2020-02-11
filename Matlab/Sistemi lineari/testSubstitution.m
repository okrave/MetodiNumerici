clear all;
close all;

n=3;
C = randomTriangolarMatrix('inf',n)
B = randi([1,5],1,n)
x_for= forwardSubstitution(C,B)

%backward
D = randomTriangolarMatrix('sup',n)
x_bac = backwardSubstitution(D,B)

