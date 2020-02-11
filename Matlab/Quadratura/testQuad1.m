clear all;
close all;


a = 0;
b = 1;



%punto medio
pm = getQRule('PM');

%Simpson
cs = getQRule('CS');

%trapezio
tr = getQRule('TR');

%Funzione di primo grado
f=@(x) 2*x+3;
%Integrale funzione
F=@(x) 2*x.^2/2+3*x;
Itr = quad1(f,a,b,tr);
Ics = quad1(f,a,b,cs);
Ipm = quad1(f,a,b,pm);

ErroreTr = Itr - (F(b)-F(a))
ErroreCs = Ics - (F(b)-F(a))
ErrorePm = Ipm - (F(b)-F(a))


%Funzione di secondo grado
f1=@(x)-x.^3+2*x.^2-3*x+5;
%Integrale della funzione
F=@(x) -x.^4/4+2*x.^3/3-3*x.^2/2+5*x;

Itr = quad1(f1,a,b,tr);
Ics = quad1(f1,a,b,cs);
Ipm = quad1(f1,a,b,pm);

ErroreTr = Itr - (F(b)-F(a))
ErroreCs = Ics - (F(b)-F(a))
ErrorePm = Ipm - (F(b)-F(a))





