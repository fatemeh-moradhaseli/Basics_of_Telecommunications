clear all; clc; close all;
% Signal Power Calculation - by Fatemeh Moradhaseli Mar 2024-Fravardin1403


fs = 1000; t = 0:1/fs:0.5; % نیم ثانیه برای وضوح بیشتر
A = 2; f = 5; 
x = A * sin(2*pi*f*t);

% محاسبات عددی
sig_energy = sum(x.^2) * (1/fs); 
sig_power = sum(x.^2) / length(x);

% plot
fill(t, x.^2, [0.9 0.9 0.8]); hold on; % رنگ کردن زیر نمودار توان دوم
plot(t, x, 'b', 'LineWidth', 2); % رسم خود سیگنال
plot(t, x.^2, 'r--', 'LineWidth', 1.5); % رسم سیگنال توان دوم (x^2)

grid on;
title(['Power Analysis by Fatemeh M. (P = ', num2str(sig_power), ' W)']);
legend('Signal Energy Area (x^2)', 'Original Signal (x)', 'Instantaneous Power (x^2)');

% نوشتن مقادیر داخل نمودار (Text Box)
text(0.05, 3.5, ['Total Energy: ', num2str(sig_energy), ' J'], 'FontSize', 12, 'Color', 'red');
text(0.05, 3.0, ['Average Power: ', num2str(sig_power), ' W'], 'FontSize', 12, 'Color', 'blue');

xlabel('Time (s)');
ylabel('Amplitude / Power');
axis([0 0.5 -2.5 4.5]); % تنظیم محورها برای جا شدن متن

% توضیحات
% این نموداری است برای نمایش توان و انرژی
% میدانیم زمانی توان صفر هست که انرژی سیگنال محدود باشد 
% انرزی انتگرال توان دوم سیگناله