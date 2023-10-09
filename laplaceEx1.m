
clear all; close all;
syms f t s
syms wn w F0


sol=ilaplace(F0*s/((s^2+wn^2)*(s^2+w^2)))
pretty(simplify(sol))