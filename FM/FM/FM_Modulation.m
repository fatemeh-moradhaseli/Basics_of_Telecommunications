% FM Modulation 
% by : Fatemeh Moradhaseli Mar 2024
clear all; clc; close all;


fs = 1000;          % فرکانس نمونه‌برداری
t = 0:1/fs:1;       % بازه زمانی ۱ ثانیه
fm = 2;             % کمتر
fc = 30;            % فرکانس حامل
dev = 25;           % افزایش یا کاهش فشردگی

msg = sin(2*pi*fm*t);
modulated = fmmod(msg, fc, fs, dev);

plot(t, modulated, 'LineWidth', 1.5);
title('FM Modulation - Fatemeh M.');
xlabel('Time (s)'); grid on;
axis([0 1 -1.2 1.2]); % فیکس کردن محور برای نمایش بهتر