clf; clear all;close all;
m=1;c=0.1;k=1;
A=...; %TODO
C=...; %TODO
sys=ss(A,[],C,[]);
x0=[1,0];
figure;
initial(sys,x0)
