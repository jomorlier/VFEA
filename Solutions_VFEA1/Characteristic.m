%solve nonlinear equation using fsolve
clear all; close all;


%The characteristic equation is

%plot
betaL=0:0.1:10;
plot()...%TODO
hold on;
plot()...%TODO
xlabel('betaL');
ylabel('solving visually the characteric equation')
hold on;



fun = @ (x) ...%TODO;
for x=2:2:8
%Test 2,4,8
x0 = x;
x = fzero(fun, x0)
stem(x,1,'filled','LineWidth',3);
hold on;
end