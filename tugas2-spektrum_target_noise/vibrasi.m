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

% frekuensi sampling 25600 Hz
data.fs = 25600;

data.db_axi = mean(db(data.axi));
fprintf('rata-rata level pada sumbu axial = %.2f dB\n', data.db_axi);