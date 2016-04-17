% plot_vibrasi.m
%
% Menampilkan spektrum antara 0 - 1000 Hz dari data getaran pompa pada tiga
% titik pengukuran yaitu sumbu aksial, horizontal dan vertikal.
%
% 17/04/2016 11:26 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________

NFFT = 2^nextpow2(length(data.axi));

figure(1);
subplot(131);
myspectrogram(data.axi, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa (Aksial)', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

subplot(132);
myspectrogram(data.hor, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa (Horizontal)', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

subplot(133);
myspectrogram(data.hor, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa (Vertikal)', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);