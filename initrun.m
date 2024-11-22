clear all; clc;
% G = 0.4*1.096e-5;
G = 0.4*1e-5;
I = 0.2086;
wn = sqrt(G/I);
% wn = 1.0065;
ze = 1;
tFinal = 11e4;

% G = wn^2*I;
k1 = 2*ze*wn*I/G;
% k2 = (wn^2)*(I*fcL)/G;
k2 = 1

% sim('Contoh_Phoebe_2_noswitch_FIX.slx','stoptime',num2str(tFinal));