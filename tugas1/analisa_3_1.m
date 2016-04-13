Fs = 1000;
t = 0:1/Fs:0.25;

%%

f1 = 100;
f2 = 900;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure(1);
subplot(211);
plot(t,x1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 100 Hz')
axis tight;

subplot(212);
p2 = plot(t,x2);
set(p2, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 900 Hz')
axis tight;

figure(5);
subplot(211);
spectrogram(x1,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 100 Hz');
subplot(212);
spectrogram(x2,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 900 Hz');

%%

f1 = 200;
f2 = 800;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure(2);
subplot(211);
plot(t,x1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 200 Hz')
axis tight;

subplot(212);
p2 = plot(t,x2);
set(p2, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 800 Hz')
axis tight;

figure(6);
subplot(211);
spectrogram(x1,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 200 Hz');
subplot(212);
spectrogram(x2,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 800 Hz');

%%

f1 = 300;
f2 = 700;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure(3);
subplot(211);
plot(t,x1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 300 Hz')
axis tight;

subplot(212);
p2 = plot(t,x2);
set(p2, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 700 Hz')
axis tight;

figure(7);
subplot(211);
spectrogram(x1,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 300 Hz');
subplot(212);
spectrogram(x2,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 700 Hz');

%%

f1 = 400;
f2 = 600;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);

figure(4);
subplot(211);
p1 = plot(t,x1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 400 Hz')
axis tight;

subplot(212);
p2 = plot(t,x2);
set(p2, 'color', 'red');
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 600 Hz')
axis tight;

figure(8);
subplot(211);
spectrogram(x1,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 400 Hz');
subplot(212);
spectrogram(x2,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 600 Hz');

%%

f1 = 400;
x1 = sin(2*pi*f1*t);

figure(10);
subplot(211);
p1 = plot(t,x1);
xlabel('Waktu (Detik)');
ylabel('Level');
title('Frekuensi 500 Hz')
axis tight;

subplot(212);
spectrogram(x1,200,150,200,1E3);
xlabel('Frekuensi (Hz)');
ylabel('Waktu (Detik)');
title('Frekuensi 500 Hz');