clear all;
close all;
clc;

percobaan_3_4

figure(2)
subplot(211);
myspectrogram(x, R, [18 1], @hamming, 1024);
axis tight
ylabel('Frequency (Hz)');
xlabel('Time (Second)');
title(sprintf('Original audio %i bits',nbits))

subplot(212);
myspectrogram(xq, R, [18 1], @hamming, 1024);
axis tight
ylabel('Frequency (Hz)');
xlabel('Time (Second)');
title(sprintf('Re-quantized audio with %i bits',bits));

name_fig = sprintf('p3-4-spektrum-original_%d_bits_-_re-quentized_%d_bits', nbits, bits);
saveas (gcf,name_fig,'eps2c');