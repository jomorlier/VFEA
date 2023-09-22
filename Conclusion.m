clear all;close all;
%3DOFs BC left cantilever BC Right Free
%BC k m k m k m
%k=1=m
K=[2 -1 0; -1 2 -1; 0 -1 1]
M=[1 0 0; 0 1 0; 0 0 1]
%%
%YES I can Write this ! M is diagonal
Ktilde=...%TODO
%compare the results
[V,D] =eig(Ktilde)
%it is the same !!
[V,D] =eig(K,M)

%what can tell you these discs ? Just having a look to Ktilde
figure;
gershdisc(Ktilde)

% Rayleigh Ritz
% Let's try this x1 vector
X1=[1 2 3]';
X=X1;
%compare to D(1)
RR=...%TODO
%error with respect to D(1,1) in pc
error1=...%TODO
%is it better?
Xbest=[1 1 1]';
X=Xbest;
%compare to D(1)
RR=...%TODO
%error with respect to D(1,1) in pc
error1bis=...%TODO
%even worst
% ...compare to D(1)
Xbest=[-.32;-.59;-.73];
X=Xbest;
RR=...%TODO
%true value
RR==D(1,1)
%error with respect to D(1,1) in pc
error1ter=...%TODO
error = [error1 error1bis error1ter];
%[1 2 3],{'[1 2 3]','[1 1 1]','[-.32;-.59;-.73]'})
figure;
bar([1 2 3],error);xlabel('[1 2 3],[1 1 1],[-.32;-.59;-.73]')
; ylabel(' error on \omega_1 approximation');
%Oh I Can do that ...compare to D(2)
Xbest=V(:,2); %should try this one...
X=Xbest;
RR=...%TODO
RR==D(2,2)
%error in pc
error2=... %TODO




