Fs1 = 16000; %frekuensi sampling
t1 = 0:1/Fs1:0.05; % waktu
c1_1 = sin(2*pi*523*t1); % sinyal

Fs2 = 10000;
t2 = 0:1/Fs2:0.05;
c1_2 = sin(2*pi*523*t2);

Fs3 = 8000;
t3 = 0:1/Fs3:0.05;
c1_3 = sin(2*pi*523*t3);

Fs4 = 2000;
t4 = 0:1/Fs4:0.05;
c1_4 = sin(2*pi*523*t4);

Fs5 = 1000;
t5 = 0:1/Fs5:0.05;
c1_5 = sin(2*pi*523*t5);

%% Plot Fs 16kHz dgn Fs 10kHz

figure(1);
subplot(221);
plot(t1, c1_1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 16000 Hz')
axis tight;

subplot(222);
NFFT = 2^nextpow2(length(c1_1));
Y = fft(c1_1,NFFT)/length(c1_1);
f = Fs1/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Spektrum dari Sinyal dengan Fs 16000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

subplot(223);
p2 = plot(t2, c1_2);
set(p2, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 10000 Hz')
axis tight;

subplot(224)
NFFT = 2^nextpow2(length(c1_2));
Y = fft(c1_2,NFFT)/length(c1_2);
f = Fs2/2*linspace(0,1,NFFT/2+1);
p2 = plot(f,2*abs(Y(1:NFFT/2+1))) ;
set(p2, 'color', 'red');
title('Spektrum dari Sinyal dengan Fs 10000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

%% Plot Fs 10kHz vs 8kHz

figure(2);
subplot(221);
p2 = plot(t2, c1_2);
set(p2, 'color', 'blue');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 10000 Hz')
axis tight;

subplot(222);
NFFT = 2^nextpow2(length(c1_2));
Y = fft(c1_2,NFFT)/length(c1_2);
f = Fs2/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Spektrum dari Sinyal dengan Fs 10000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

subplot(223);
p3 = plot(t3, c1_3);
set(p3, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 8000 Hz')
axis tight;

subplot(224)
NFFT = 2^nextpow2(length(c1_3));
Y = fft(c1_3,NFFT)/length(c1_3);
f = Fs2/2*linspace(0,1,NFFT/2+1);
p2 = plot(f,2*abs(Y(1:NFFT/2+1)));
set(p2, 'color', 'red');
title('Spektrum dari Sinyal dengan Fs 8000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

%% Plot Fs 8kHz vs 2kHz

figure(3);
subplot(221);
p3 = plot(t3, c1_3);
set(p3, 'color', 'blue');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 8000 Hz')
axis tight;

subplot(222)
NFFT = 2^nextpow2(length(c1_3));
Y = fft(c1_3,NFFT)/length(c1_3);
f = Fs3/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Spektrum dari Sinyal dengan Fs 8000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

subplot(223);
p4 = plot(t4, c1_4);
set(p4, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 2000 Hz')
axis tight;

subplot(224)
NFFT = 2^nextpow2(length(c1_4));
Y = fft(c1_4,NFFT)/length(c1_4);
f = Fs4/2*linspace(0,1,NFFT/2+1);
p2 = plot(f,2*abs(Y(1:NFFT/2+1))) ;
set(p2, 'color', 'red');
title('Spektrum dari Sinyal dengan Fs 2000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

%% Plot Fs 2kHz vs 1kHz


figure(4);
subplot(221);
p4 = plot(t4, c1_4);
set(p4, 'color', 'blue');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 2000 Hz')
axis tight;

subplot(222)
NFFT = 2^nextpow2(length(c1_4));
Y = fft(c1_4,NFFT)/length(c1_4);
f = Fs4/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Spektrum dari Sinyal dengan Fs 2000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')

subplot(223);
p5 = plot(t5, c1_5);
set(p5, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi \it{Sampling} 1000 Hz')
axis tight;

subplot(224)
NFFT = 2^nextpow2(length(c1_5));
Y = fft(c1_5,NFFT)/length(c1_5);
f = Fs5/2*linspace(0,1,NFFT/2+1);
p2 = plot(f,2*abs(Y(1:NFFT/2+1)));
set(p2, 'color', 'red');
title('Spektrum dari Sinyal dengan Fs 1000 Hz')
xlabel('Frekuensi (Hz)')
ylabel('Amplitude')