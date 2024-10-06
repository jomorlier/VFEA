clear all; close all;
M=[5 0 ;0 1];
K=[4 -2;-2 6];
[v,d]=eig(K,M)
%The function eig in MATLAB gives unsorted eigenvalues,
% so it will be help to make sorting the eigenvalues of the system.
[u,wn]=eigsort(K,M);

%4B
u1 = u(:, 1);
u2 = u(:, 2);
isitzero=u1'*m*u2
%modal mass
m_1 = ...%TODO
m_2 = ...%TODO
%modal stiffness
k_1 = ...%TODO
k_2 = ...%TODO

%4C
P=...%TODO
...%TODO
...%TODO



function [u,wn]=eigsort(k,m);
wn=...%TODO
u=...%TODO
end
disp('The natural frequencies are (rad/sec)')
disp(' ')
wn
disp(' ')
disp('The eigenvectors of the system are')
u
end


