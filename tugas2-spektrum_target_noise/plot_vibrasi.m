function plot_vibrasi(data, fs, Tw, Ts, window, nfft, kerusakan, fig)
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

figure(fig);
subplot(131);
myspectrogram(data(:,2), fs, [Tw Ts], window, nfft); axis tight;
name = sprintf('Spektrum Getaran Pompa %s (Axial)', kerusakan);
title (name, 'fontweight','bold',...
    'fontsize',12);
xlabel ('Waktu (Detik)','fontweight','bold','fontsize',12);
ylabel ('Frekuensi (Hz)','fontweight','bold','fontsize',12);
a = colorbar('eastoutside');
ylabel(a, 'dB', 'fontweight','bold');

subplot(132);
myspectrogram(data(:,3), fs, [Tw Ts], window, nfft); axis tight;
name = sprintf('Spektrum Getaran Pompa %s (Horizontal)', kerusakan);
title (name, 'fontweight','bold',...
    'fontsize',12);
xlabel ('Waktu (Detik)','fontweight','bold','fontsize',12);
ylabel ('Frekuensi (Hz)','fontweight','bold','fontsize',12);
a = colorbar('eastoutside');
ylabel(a, 'dB', 'fontweight','bold');

subplot(133);
myspectrogram(data(:,4), fs, [Tw Ts], window, nfft); axis tight;
name = sprintf('Spektrum Getaran Pompa %s (Vertical)', kerusakan);
title (name, 'fontweight','bold',...
    'fontsize',12);
xlabel ('Waktu (Detik)','fontweight','bold','fontsize',12);
ylabel ('Frekuensi (Hz)','fontweight','bold','fontsize',12);
a = colorbar('eastoutside');
ylabel(a, 'dB', 'fontweight','bold');
