% plot_vibrasinoise.m
%
% Menampilkan spektrum antara 0 - 1000 Hz dari data getaran pompa pada tiga
% titik pengukuran yaitu sumbu aksial, horizontal dan vertikal dengan
% tambahan noise dengan SNR tertentu.
%
% 17/04/2016 11:26 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________

NFFT = 2^nextpow2(length(data.axi));

fig = 1; %nomer figure

figure(fig);
subplot(211);
myspectrogram(data.axi_whi, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa (Aksial, White Noise (dB sama))',...
    'fontweight','bold', 'fontsize', 12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);
subplot(212);
myspectrogram(data.axi, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa (Aksial)', 'fontweight','bold',...
    'fontsize', 12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

