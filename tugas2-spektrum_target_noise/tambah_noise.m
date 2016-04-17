function [mix] = tambah_noise(data, pow, type, length)
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
switch type
    case 'White' % White Noise
        noise = randn(length,1);
        
    case 'Blue'% Blue Noise
        noise = bluenoise(length);
        noise = noise';
        
    case 'Pink'% Pink Noise
        noise = pinknoise(length);
        noise = noise';
        
    case 'Red'
        noise = rednoise(length);
        noise = noise';
        
    case 'Violet'
        noise = rednoise(length);
        noise = noise';
end

noise_db = mean(db(noise));
fprintf('rata-rata level %s noise = %.2f dB\n\n', type, noise_db);

noise_dbmax = max(db(noise));
fprintf('max level %s noise = %.2f dB\n\n', type, noise_dbmax);

noise = noise*10^(pow/20);
mix = data + noise;
       
end