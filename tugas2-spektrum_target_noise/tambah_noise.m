function [mix, dbmax, dbmean] = tambah_noise(data, pow, type, length)
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
switch type     % Jenis - jenis noise
    case 'White' % White Noise
        noise = randn(length,1);
        % normalisasi skala -1 hingga 1
        xmax = 1;
        xmin = -1;
        noise  = (noise - min(noise)).*(xmax - xmin)/...
            (max(noise) - min(noise)) + xmin;
        
    case 'Blue'% Blue Noise
        noise = bluenoise(length);
        % normalisasi skala -1 hingga 1
        xmax = 1;
        xmin = -1;
        noise  = (noise - min(noise)).*(xmax - xmin)/...
            (max(noise) - min(noise)) + xmin;
        noise = noise';
        
    case 'Pink'% Pink Noise
        noise = pinknoise(length);
        % normalisasi skala -1 hingga 1
        xmax = 1;
        xmin = -1;
        noise  = (noise - min(noise)).*(xmax - xmin)/...
            (max(noise) - min(noise)) + xmin;
        noise = noise';
        
    case 'Red'
        noise = rednoise(length);
        % normalisasi skala -1 hingga 1
        xmax = 1;
        xmin = -1;
        noise  = (noise - min(noise)).*(xmax - xmin)/...
            (max(noise) - min(noise)) + xmin;
        noise = noise';
    case 'Violet'
        noise = rednoise(length);
        % normalisasi skala -1 hingga 1
        xmax = 1;
        xmin = -1;
        noise  = (noise - min(noise)).*(xmax - xmin)/...
            (max(noise) - min(noise)) + xmin;
        noise = noise';
end

noise_db = mean(mag2db(abs(noise)));
fprintf('rata-rata level %s noise = %.2f dB\n\n', type, noise_db)

noise_dbmax = max(mag2db(abs(noise)));
fprintf('max level %s noise = %.2f dB\n\n', type, noise_dbmax)

noise = noise*10^(pow/20);

mix = data + noise;
dbmean = noise_db;
dbmax = noise_dbmax;
       
end