%definire N prima di chiamare
xn=linspace(-5,5,N);
yn=f(xn);
DD=diffDiv(xn,yn);
xn1=-5*cos(pi * (0:N-1)/(N-1) );
yn1=f(xn1);
DD1=diffDiv(xn1,yn1);
plot(xx,f(xx),'k',xx,neville(DD,xx),'r--',xn,yn,'ro',...
xx,neville(DD1,xx),'b--',xn1,yn1,'bo')
legend('f(x)','\pi(x)','nodi','p(x)','nodi')
title(sprintf(' Usando %d nodi',N))
