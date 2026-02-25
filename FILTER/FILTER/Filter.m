% Signal Filtering 
% by : Fatemeh Moradhaseli Mar 2024 (Farvardin 1403)
clear all; clc; close all;


fs = 1000; t = 0:1/fs:0.5; 
clean_sig = sin(2*pi*10*t);                 %   Main signal 10htz
noisy_sig = clean_sig + 0.6*randn(size(t)); %  Adding noise

%Moving Average Filter -( filter e Miyangin)
windowSize = 15;
filtered_sig = movmean(noisy_sig, windowSize);

% Plots 
subplot(2,1,1);
plot(t, noisy_sig, 'r'); title('Signal with Noise - Fatemeh M.');
xlabel('Time (s)'); grid on;

subplot(2,1,2);
plot(t, filtered_sig, 'b', 'LineWidth', 2); title('Filtered Signal (Cleaned)');
xlabel('Time (s)'); grid on;