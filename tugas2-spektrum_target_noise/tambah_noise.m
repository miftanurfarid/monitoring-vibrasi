% tambah_noise.m
%
% Menambahkan berbagai jenis noise terhadap data getaran pompa dengan
% variasi SNR.
%
% 17/04/2016 11:27 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________

%% White Noise
noise.white = randn(length(data.axi),1);
noise.db_white = mean(db(noise.white));

fprintf('rata-rata level pada sumbu axial = %.2f dB\n', noise.db_white);

% jika ingin SNR = 0
pow = -(noise.db_white - data.db_axi);

% jika ingin memasukkan SNR tertentu

noise.white = noise.white*10^(pow/20);

noise.db_white = mean(db(noise.white));
fprintf('rata-rata level pada sumbu axial = %.2f dB\n', noise.db_white);

data.axi_whi = data.axi + noise.white;