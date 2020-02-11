close all; clear all;

f=@(x) exp(x);
F=@(x) exp(x);

%punto medio
pm = getQRule('PM');
%Simpson
cs = getQRule('CS');
%trapezio
tr = getQRule('TR');
HH = logspace(0,-6,10);

errorPm = zeros(size(HH));
errorTr = zeros(size(HH));
errorCs = zeros(size(HH));
for i=1:length(HH)
    a = 0;
    b = HH(i);
    Iesatto = F(b)-F(a);
    errorPm(i) = abs(quad1(f,a,b,pm) - Iesatto)
    errorCs(i) = abs(quad1(f,a,b,cs) - Iesatto)
    errorTr(i) = abs(quad1(f,a,b,tr) - Iesatto)
end

figure(1);
loglog(HH,errorPm,'b.-','linewidth',2);
hold on
loglog(HH,errorCs,'gx-','linewidth',2);
loglog(HH,errorTr,'k*-','linewidth',2);
legend('punto medio','trapezi','cav-simp');
