function [mix] = tambah_noise(data, pow, type)
% tambah_noise.m
%
% Menambahkan berbagai jenis noise terhadap data getaran pompa dengan
% variasi SNR.
%
% data : data pengukuran vibrasi
% pow  : power noise
% type : tipe noise (white, blue, pink, red, violet)
% 
% 17/04/2016 11:27 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________
switch type     % Jenis - jenis noise
    case 'White'
	noise = audioread('white_noise.wav');
        
    case 'Blue'
        noise = audioread('blue_noise.wav');

    case 'Pink'
        noise = audioread('pink_noise.wav');

    case 'Red'
	noise = audioread('red_noise.wav');

    case 'Violet'
	noise = audioread('violet_noise.wav');

end

noise = noise*10^(pow/20);

mix = data + noise;
       
end
