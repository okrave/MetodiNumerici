clear all;
close all;

%Funzione di primo grado
f=@(x) 2*x+3;
%Integrale funzione
F=@(x) 2*x.^2/2+3*x;

a = 0;
b = 1;
N = 5;
ext = F(b) - F(a);
%punto medio
pm = getQRule('PM');

%Simpson
cs = getQRule('CS');

%trapezio
tr = getQRule('TR');

Ipm = quadN(f,a,b,N,pm);
Ics = quadN(f,a,b,N,cs);
Itr = quadN(f,a,b,N,tr);

ErrIpm = Ipm - ext
ErrIcs = Ics - ext
ErrItr = Itr - ext
