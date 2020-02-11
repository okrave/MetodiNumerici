% Abbiamo due funzioni LU_nopivot e LU_nopivot_cycle. Il secondo ha un
% ciclo for in più vediamo quanto questo influisca nel tmepo di esecuzione.
clear all;
close all;
time_no_cycle= [];
time_cycle = [];
N = 801
for n=1:10:N
    
    A = rand(n);
    B = rand(1,n);
    
    tic;
    [L,U] = LU_nopivot(A);
    time_no_cycle(end+1) = toc;

    tic;
    L = LU_nopivot_cycle(A);
    time_cycle(end+1) = toc;
end

x = linspace(1,N,length(time_cycle));

plot(x,time_cycle,"y.-");
hold on;
plot(x,time_no_cycle,"b.-");
legend("tempo con più cicli","tempo con meno cicli");



