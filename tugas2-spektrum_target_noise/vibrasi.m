function vibrasi(kerusakan, sumbu, jenis_noise, pow, plot)
% vibrasi.m
%
% Performansi spektrogram menampilkan spektrum data getaran pompa terhadap
% kenaikan tingkat tekanan bunyi dari noise (white noise, pink noise, brown
% noise dan blue noise)
%
% kerusakan:
% 1 = normal, 2 = unbalance, 3 = novibrasi
%
% jenis_noise:
% 'White', 'Blue', 'Pink', 'Red', 'Violet'
%
% sumbu:
% 1 = axial, 2 = horizontal, 3 = vertical
% 
% pow = power noise in dB
%
% plot:
% 1 = plot data vibrasi 3 sumbu, 0 = tidak
%
% 17/04/2016 11:27 PM
% mifta nur farid, miftanurfarid@gmail.com
% https://github.com/miftanurfarid/
%
% Teknik Fisika - Institut Teknologi Sepuluh Nopember
%__________________________________________________________________________
data.fs = 25600;            % frekuensi sampling 25600 Hz
data.kerusakan = kerusakan; % jenis kerusakan pompa
data.Tw = 60;               % windows 50 ms
data.Ts = 5;                % windows shift 5 ms
data.window = @hamming;     % hamming windows
data.nfft = 1024;

% jenis kerusakan pompa
switch data.kerusakan
    case 1
        data.kerusakan = 'Normal';
        data.vibrasi = load(data.kerusakan);
        
    case 2
        data.kerusakan = 'Unbalance';
        data.vibrasi = load(data.kerusakan);
    case 3
        data.kerusakan = 'NoVibrasi';
        data.vibrasi = load(data.kerusakan);
end

fig = 1;

if plot == 1
    plot_vibrasi(data.vibrasi, data.fs, data.Tw, data.Ts, data.window, data.nfft, data.kerusakan, fig);
    fig = fig + 1;
end

% data pengukuran pada sumbu yang akan digunakan
switch sumbu
    case 1  %axial
        data.type = 'Axial';
        
        data.vibrasi = data.vibrasi(:,2); % kolom 2 = axial
        
        % normalisasi skala -1 hingga 1
        data.xmax = 1;
        data.xmin = -1;
        
        data.vibrasi  = (data.vibrasi - min(data.vibrasi)).*(data.xmax - data.xmin)/(max(data.vibrasi) - min(data.vibrasi)) + data.xmin;
        
    case 2  %horizontal
        data.type = 'Horizontal';
        
        data.vibrasi = data.vibrasi(:,3); % kolom 3 = horizontal
        
        % normalisasi skala -1 hingga 1
        data.xmax = 1;
        data.xmin = -1;
        
        data.vibrasi  = (data.vibrasi - min(data.vibrasi)).*(data.xmax - data.xmin)/(max(data.vibrasi) - min(data.vibrasi)) + data.xmin;

    case 3  %vertikal
        data.type = 'Vertikal';
        
        data.vibrasi = data.vibrasi(:,4); % kolom 4 = vertical
        
        % normalisasi skala -1 hingga 1
        data.xmax = 1;
        data.xmin = -1;
        
        data.vibrasi  = (data.vibrasi - min(data.vibrasi)).*(data.xmax - data.xmin)/(max(data.vibrasi) - min(data.vibrasi)) + data.xmin;
end

data.title = sprintf('Spektrum Getaran Pompa %s ( %s )', data.kerusakan, data.type);

%% tambah noise

noise.pow = pow;
noise.type = jenis_noise;   % jenis noise
[data.mix] = tambah_noise(data.vibrasi, noise.pow, noise.type);
noise.type = sprintf('%s Noise', jenis_noise);

%% Print SNR

overall_snr = snr(data.vibrasi, data.mix - data.vibrasi);

%% plot spektrum vibrasi & vibrasi + noise

noise.title = sprintf('Spektrum Getaran Pompa %s ( %s, %.1f dB SNR %s )', data.kerusakan, data.type, overall_snr, noise.type);

plot_vibrasinoise(data.mix, data.vibrasi, data.fs, data.nfft, noise.title, data.title, data.Tw, data.Ts, fig);
end
