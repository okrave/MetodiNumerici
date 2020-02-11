clear all, close all
%Runge
%f=@(x) 1./ (1 + 25 * x.^2); %NOTA: uso di ./ e .^

%Gibbs
f=@(x) sign(x);

xx=linspace(-5,5,1000);

figure(1);
subplot(2,2,1); N=4;
lab3es2Helper
subplot(2,2,2); N=6;
lab3es2Helper
subplot(2,2,3); N=8;
lab3es2Helper
subplot(2,2,4); N=11;
lab3es2Helper