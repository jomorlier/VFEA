clf; clear all;
t0=0;tf=50;
x0=[1,0];
figure;
[t,x]=ode45('sdof',[t0 tf],x0);
plot(t,x)

function xdot=sdof(t,x)
m=1;c=0.1;k =1;
A=...; %TODO
xdot=...; %TODO
end