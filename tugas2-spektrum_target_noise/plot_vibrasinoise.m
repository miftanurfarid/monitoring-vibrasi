function plot_vibrasinoise(mix, raw, fs, nfft, mix_title, raw_title, Tw, Ts, fig)
% plot_vibrasinoise.m
%
% mix      : data pengukuran setelah ditambah noise
% raw      : data pengukuran tanpa penambahan noise
% fs       : frekuensi sampling
% nfft     : number of fft
% mix_title: judul plot data pengukuran setelah ditambah noise
% raw_title: judul plot data pengukuran tanpa penambahan noise
% Tw, Ts   : lembar windows, lebar shifting
% fig      : nomer figure
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
myspectrogram(raw, fs, [Tw Ts], @hamming, nfft); axis tight;
title (raw_title, 'fontweight','bold', 'fontsize', 12);
xlabel ('Waktu (Detik)','fontweight','bold','fontsize',12);
ylabel ('Frekuensi (Hz)','fontweight','bold','fontsize',12);
a = colorbar('eastoutside');
ylabel(a, 'dB', 'fontweight','bold');

subplot(212);
myspectrogram(mix, fs, [Tw Ts], @hamming, nfft); axis tight;
title (mix_title, 'fontweight','bold',...
    'fontsize', 12);
xlabel ('Waktu (Detik)','fontweight','bold','fontsize',12);
ylabel ('Frekuensi (Hz)','fontweight','bold','fontsize',12);
a = colorbar('eastoutside');
ylabel(a, 'dB', 'fontweight','bold');

end