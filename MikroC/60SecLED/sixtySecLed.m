%% 60SecLED
format short; format compact; clear; clc;

syms VDS;
L = 0.04;
K = 1e-3;
Vt = 1;
VGS = 2;
I = 0.5e-3;

double(solve(I == K*(1+L*VDS)*((VGS - Vt)*VDS - 0.5*VDS^2)))