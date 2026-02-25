%AM Modulation Analysis
% by : Fatemeh Moradhaseli  - Mar2024
clear all; clc; close all;

t = 0:0.001:1; 
fm = 5; 
fc = 50; 

msg = cos(2*pi*fm*t);
carrier = cos(2*pi*fc*t);
modulated = (1 + 0.5*msg) .* carrier;

plot(t, modulated);
title('AM Modulation - Moradhaseli');
grid on;