clear all; close all;
%4E
M=[9 0 ;0 1]; 
K=[27 -3;-3 3];
alpha=0
beta=0.1
C=... %TODO;
[v,d]=eig(K,M);
%The function eig in MATLAB gives unsorted eigenvalues, 
% so it will be help to make sorting the eigenvalues of the system.
[u,wn]=eigsort(K,M);
%4B
u1 = u(:, 1);
u2 = u(:, 2); 
%4E
P=[u1 u2]

P'*M*P
P'*C*P
P'*K*P
B=[0 0; 0 1]
P'*B



function [u,wn]=eigsort(k,m); 
Omega=sqrt(eig(k,m)); 
[vtem,d]=eig(k,m); 
[wn,isort]=sort(Omega);
il=length(wn);
for i=1:il
u(:,i)=vtem(:,isort(i));
end
disp('The natural frequencies are (rad/sec)') 
disp(' ')
wn
disp(' ')
disp('The eigenvectors of the system are')
u
end


