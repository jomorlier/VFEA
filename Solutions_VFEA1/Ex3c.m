clf; clear all; close all;
m=100;k=1000;c=25;
w=2.5;F=1000;f_o=F;
t=[0:0.1:10];
u=f_o*cos(w*t);
A=[0 1;-k/m -c/m];
%excitation of dof2
B=[0;1/m];
C=[1 0];
D=[0];
sys=ss(A,B,C,D);
x0=[0,0];
figure;
x=lsim(sys,u,t,x0);
plot(t,x);xlabel('Time');ylabel('Amplitude')
hold on;
TSPAN=[0 5];
Y0=[0;0];
[t,x] =ode45('sdof_forced',TSPAN,Y0);
plot(t,x(:,1),'k*')

function Xdot=sdof_forced(t,X)
m=100;k=1000;c=25;
ze=c/(2*sqrt(k*m));
wn=sqrt(k/m);
w=2.5;F=1000;f_o=F/m;
%excitation of dof2
f=[0 ;f_o*cos(w*t)];
%A=[0 1;-wn*wn -2*ze*wn];
A=[0 1;-k/m -c/m]
Xdot=A*X+f;
end