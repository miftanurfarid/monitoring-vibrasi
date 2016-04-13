function analisa_3_5(Fs)
Y = wavread('suara.wav');
t = 0:1/Fs:(length(Y)-1)/Fs;
sound(Y, Fs)

figure(1);
subplot(211);
plot(t,Y);
xlabel('Time (Second)');
ylabel('Level');
title(sprintf('Waveform suara.wav dengan Fs %i Hz', Fs));
axis tight;

subplot(212);
myspectrogram(xq, R, [18 1], @hamming, 1024);
axis tight
ylabel('Frequency (Hz)');
xlabel('Time (Second)');
title(sprintf('Waveform suara.wav dengan Fs %i Hz', Fs));
axis tight;

