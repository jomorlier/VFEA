
clear all; close all;
syms f t s
f = 2; laplace(f,t,s) 
f = sin(4*t); laplace(f,t,s) 
f = 10*sin(4*t); laplace(f,t,s)
f = 5*cos(2*t); laplace(f,t,s) 
f = t^5; laplace(f,t,s) 
f = exp(-2*t); laplace(f,t,s) 
f = 3*exp(4*t); laplace(f,t,s) 


ilaplace(3/((s-1)^2+6))