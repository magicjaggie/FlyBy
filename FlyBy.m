clc;
clear;

% INPUT
v_inf_n = [15.1 ; 0 ; 0]; % km/s
Delta = 9200; % km, impact parameter
AU = 149597870.7; % km
r_E = [1 ; 0 ; 0] * AU; % km  = distance between Earth and Sun
muE = 398600; % km3/s2
muSun = 132712e6; % km3/s2

% Number of revolutions
k = 1;


% Earth SOI
rE_SOI = 9.2571e+05;
R_E = 6371;

v_inf = sqrt( v_inf_n(1)^2 + v_inf_n(2)^2 + v_inf_n(3)^2 );

a = -muE/v_inf^2;
delta = 2*atan(-a/Delta);
e = 1/sin(delta/2) ;

rp = a*(1-e);
vp = sqrt( ((v_inf^2)/2 + muE/rp )/2 );
