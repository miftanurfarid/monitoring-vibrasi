% tugas2.m
%
% Performansi spektrogram menampilkan spektrum data getaran pompa terhadap
% kenaikan tingkat tekanan bunyi dari noise (white noise, pink noise, brown
% noise dan blue noise)
%
% 17/04/2016 07:42 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%
close all;
clear all;
clc;

load p1-unbalance.lvm          

% kolom 1 = waktu
data.axi     = p1_unbalance(:,2);   % kolom 2 = axial
data.hor     = p1_unbalance(:,3);   % kolom 3 = horizontal
data.vert    = p1_unbalance(:,4);   % kolom 4 = vertical

% normalisasi skala -1 hingga 1
xmax = 1; 
xmin = -1;

data.axi  = (data.axi - min(data.axi)).*(xmax - xmin)/(max(data.axi)...
    - min(data.axi)) + xmin;
data.hor  = (data.hor - min(data.hor)).*(xmax - xmin)/(max(data.hor)...
    - min(data.hor)) + xmin;
data.vert = (data.vert - min(data.vert)).*(xmax - xmin)/(max(data.vert)...
    - min(data.vert)) + xmin;

data.fs = 25600;     % frekuensi sampling 25600 Hz



NFFT = 2^nextpow2(length(data.axi));

data.db_axi = mean(db(data.axi));
fprintf('rata-rata level pada sumbu axial = %.2f dB\n', data.db_axi);

% spektrum axial
figure(1);
subplot(131);
myspectrogram(data.axi, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa Sumbu Aksial', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

subplot(132);
myspectrogram(data.hor, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa Sumbu Horizontal', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

subplot(133);
myspectrogram(data.hor, data.fs, [20 5], @hamming, NFFT); axis tight;
title ('Spektrum Getaran Pompa Sumbu Vertikal', 'fontweight','bold',...
    'fontsize',12);
xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);

% compare signal with signal + white noise

noise.white = randn(length(data.axi),1);

noise.db_white = mean(db(noise.white));

%figure(4);
%subplot(211);
%    myspectrogram(axi, fs, [20 5], @hamming, 1024); axis tight;
%    title ('Spektrum Getaran Pompa Sumbu Aksial', 'fontweight','bold',...
%        'fontsize',12);
%    xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
%    ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);
%subplot(212);
%    myspectrogram(axi_whi, fs, [20 5], @hamming, 1024); axis tight;
%    title ('Spektrum Getaran Pompa Sumbu Aksial', 'fontweight','bold',...
%        'fontsize',12);
%    xlabel ('waktu (detik)','fontweight','bold','fontsize',12);
%    ylabel ('frekuensi (Hz)','fontweight','bold','fontsize',12);
