
% Time & Frequency Domain Analysis 
% by Fatemeh Moradhaseli - March 2024 farvardin 1403
clear all; clc; close all;

fs = 1000; t = 0:1/fs:1-1/fs;
f1 = 50; f2 = 120; % دو تا فرکانس دلخواه
signal = sin(2*pi*f1*t) + 0.5*sin(2*pi*f2*t);

%  در حوزه زمان
subplot(2,1,1); plot(t(1:100), signal(1:100));
title('Time Domain (Waveform) - Fatemeh M.'); grid on;

% رسم در حوزه فرکانس (FFT)
X = abs(fft(signal))/length(signal);
f = (0:length(X)-1)*fs/length(X);
subplot(2,1,2); plot(f(1:200), X(1:200));
title('Frequency Domain (FFT Spectrum)'); grid on;

% یک سیگنال FFT 
% که در 50 و 120 هرتز پیک داره