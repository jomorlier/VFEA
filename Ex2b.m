clf; clear all; close all;
m=1
zeta=0.1
k=1
wn=sqrt(k/m)
den=[...] %TODO
num=[...] %TODO
sys=tf(num,den)
bode(sys)

%2B
t=...; %TODO
u=...; %TODO
figure;
lsim(sys)