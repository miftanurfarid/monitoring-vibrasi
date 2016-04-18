% vibrasi.m
%
% Performansi spektrogram menampilkan spektrum data getaran pompa terhadap
% kenaikan tingkat tekanan bunyi dari noise (white noise, pink noise, brown
% noise dan blue noise)
%
% 17/04/2016 11:27 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________
clear all;
%close all;
clc;
t = 0:1/25600:2;
load p1-unbalance.lvm          
%data.axi = sin(2*pi*100*t);    % puretone
%data.axi = data.axi';
% kolom 1 = waktu
data.axi     = p1_unbalance(:,2);   % kolom 2 = axial
data.hor     = p1_unbalance(:,3);   % kolom 3 = horizontal
data.vert    = p1_unbalance(:,4);   % kolom 4 = vertical

clear p1_unbalance;
% normalisasi skala -1 hingga 1
data.xmax = 1; 
data.xmin = -1;

data.axi  = (data.axi - min(data.axi)).*(data.xmax - data.xmin)/...
    (max(data.axi) - min(data.axi)) + data.xmin;
%data.hor  = (data.hor - min(data.hor)).*(data.xmax - data.xmin)/...
%    (max(data.hor) - min(data.hor)) + data.xmin;
%data.vert = (data.vert - min(data.vert)).*(data.xmax - data.xmin)/...
%    (max(data.vert) - min(data.vert)) + data.xmin;

% frekuensi sampling 25600 Hz
data.fs = 25600;

% type data
data.title = 'Spektrum Getaran Pompa (aksial)';

% axial
data.db_axi = mean(mag2db(abs(data.axi)));
fprintf('rata-rata level pada sumbu aksial = %.2f dB\n\n', data.db_axi);

data.dbmax_axi = max(mag2db(abs(data.axi)));
fprintf('max level pada sumbu aksial = %.2f dB\n\n', data.dbmax_axi);

%horizontal
%data.db_hor = mean(db(data.hor));
%fprintf('rata-rata level pada sumbu horizontal = %.2f dB\n', data.db_hor);

%data.dbmax_hor = max(db(data.hor));
%fprintf('max level pada sumbu horizontal = %.2f dB\n', data.dbmax_hor);

%vertikal
%data.db_vert = mean(db(data.vert));
%fprintf('rata-rata level pada sumbu vertikal = %.2f dB\n', data.db_vert);

%data.dbmax_vert = max(db(data.vert));
%fprintf('max level pada sumbu vertikal = %.2f dB\n', data.dbmax_vert);

fprintf('_________________________________________________\n\n');

%% tambah noise
noise.pow = 0;
noise.type = 'White';   % jenis noise
[data.mix, noise.dbmax_white, noise.db_white] = tambah_noise(data.axi,...
    noise.pow, noise.type, length(data.axi));
%% plot spektrum vibrasi & vibrasi + noise
%data.nfft = 2^nextpow2(length(data.axi));
data.nfft = 1024;

noise.title = sprintf('Spektrum Getaran Pompa(Aksial, %.1fdB %sNoise)',...
    noise.pow + noise.db_white, noise.type);

plot_vibrasinoise(data.mix, data.axi, data.fs, data.nfft,...
    noise.title, data.title, 1);