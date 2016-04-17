function plot_vibrasinoise(data1, data2, fs, nfft, type1, type2, fig)
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

figure(fig);
subplot(211);
myspectrogram(data1, fs, [20 5], @hamming, nfft); axis tight;
title (type1, 'fontweight','bold', 'fontsize', 12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);
subplot(212);
myspectrogram(data2, fs, [20 5], @hamming, nfft); axis tight;
title (type2, 'fontweight','bold',...
    'fontsize', 12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);
end