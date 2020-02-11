clear all;
close all;

x = [6.5,7.0,8.0,8.5,9.0,9.1];
y = [17.769,24.001,25.961,34.336,29.036,33.417];

plot(x,y,'o');
hold on;

x_function= linspace(min(x),max(x));
yp=[];
for i = 1:4
    %Utilizzandro polyfit:
    a = polyfit(x,y,i)
    f =@(x) polyval(a,x_function);
    plot(x_function,f(x_function));
    %Utilizzandro Vandermonde
    A=fliplr(vander(x)) ;
    % La formula è a= (X'*y)/X'X
    V = A(:,1:i+1);
    b = (V') * y';
    coeff= (V' * V)\b;
    ypiv=polyval(flipud(coeff),x_function);
    plot(x_function,f(x_function),'b')
    legend('polinomio con polyfit','polinomio con vandermonde','Location','southeast' )
    title('polinomi approssimanti ai minimi quadrati')

end

polinomio_int = polyfit(x,y,5);
y = polyval(polinomio_int,x_function);
plot(x_function,y,'y');







