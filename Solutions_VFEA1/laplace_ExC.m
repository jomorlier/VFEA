
% SYSTEM: mass m  / spring k / dashpot-damping b.
% System driven through the MASS 

% Laplace Transform (LT) used to solve the ODE describing the System
%   to give the displacement x(t)of a mass excited by an input signal f(t).

%   m*x'' + b*x' + k*x = f

% 1   Enter system parameters and initial conditions
% 2   Define the input signal (driving force) f(t).
% 3   LT of input signal --> F(s).
% 4   LT of ODE -->
%       m*(s^2*X - s*x(0) - x'(0)) + b*(s*X - x(0)) + k*X = F
%      (m*s^2 + b*s + k)*X - m*(s*x(0) - x'(0)) - b*x(0) - F = 0
%  5  Solve equation for X(s)
%  6  Inverse LT --> x(t)
%  7  Miscellaneous calculations: Bode plots and Nyquist plot

% The symbolic solution for the output x(t) is displayed in the
%   Command Window. 
% Numeric variables:
%    time tN / displacement xN / velocity vN / acceleration aN
%    input - driving force fN.

% The Script may need to be amended for different input functions

% 20210320     Matabl R3030b

clear
close all
clc

syms s t X



  
% time scales: number of time steps, max simulation time [t/pi], / time 
  num = 501;
  tMax = 6;
  tN = linspace(0,tMax*pi, num);

  
% INPUT FUNCTION  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

%ExF COS(wt) FORCE without initial conditions X0 without damping
% SYSTEM PARAMETERS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
% mass m / damping constant b / spring constant k
  m = 1;
  b = 0.;
  k = 4;
  
% initial conditions: displacement x(0) and velocity v(0)  
  x0 = 0;
  v0 = 0;

% driving frequency
  w = 2;
  
% amplitude
  A = 1;
% Input signal (numeric)
  fN = A*cos(w*tN);   
% Input signal (symbolic)
  f = A*cos(w*t);
% Text for input signal 
txt_Input = 'f = A*cos(w*t)'; 


% =================================================================== 
% LAPLACE TRANSFORMS AND SOLVING FOR OUTPUT SIGNAL X(s)  ---> x(t)
% MASS: displacement, velocity and acceleration
% L.T. of input signal  
  F = laplace(f,t,s);
  
% L.T. ODE equation 
  Z = (m*s^2 + b*s + k)*X - m*(s*x0 + v0) - b*x0 - F;

% Solve for X
  Sol_x = solve(Z, X)

% INVERSE L.T. to find x(t)
  sol_x = ilaplace(Sol_x,s,t)
  pretty(sol_x)
  
% Velocity calculation
  Sol_v = s*Sol_x - x0
  sol_v = ilaplace(Sol_v)  
  pretty(sol_v)
   
% Acceleration calculation
  Sol_a = s*s*Sol_x - s*x0 - v0
  sol_a = ilaplace(Sol_a)  
  pretty(sol_a)

% Extract numbers from symbolic expressions for output x v and a
  x = subs(sol_x,{t},{tN});
  xN = double(x);
  
  v = subs(sol_v,{t},{tN});
  vN = double(v);
  
  a = subs(sol_a,{t},{tN});
  aaN = double(a);
  
% Acceleration calculation from ODE  
  aN = -(b/m).*vN - (k/m).*xN + (fN./m) ;
  
  % CALCULATIONS  ==========================================================
% Natural frequency = Resonance frequency    wN = wR
  wN = sqrt(k/m)
% Natural period
  TN = 2*pi/wN;  
% Period of input signal
  T = 2*pi/w;
% GRAPHICS  ==============================================================
graphics1
  