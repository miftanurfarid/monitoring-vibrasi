clear all; close all; clc;

% Ubah Fs dari 16000 menjadi 10000, 8000, 2000, 1000, 900, 800, 700, 600 dan 500.

Fs = 16000;
t = 0:1/Fs:0.25;

c = sin(2*pi*262*t);
d = sin(2*pi*294*t);
e = sin(2*pi*330*t);
f = sin(2*pi*349*t);
g = sin(2*pi*392*t);
a = sin(2*pi*440*t);
b = sin(2*pi*262*t);
c1 = sin(2*pi*523*t);
nol= zeros(size(t));

nada1 = [c,e,c,e,f,g,g,nol,b,c1,b,c1,b,g,nol,nol];
nada2 = [c,e,c,e,f,g,g,nol,b,c1,b,c1,b,g,nol];
nada3 = [c,nol,e,nol,g,nol,f,f,g,f,e,c,f,e,c,nol];
nada4 = [c,nol,e,nol,g,nol,f,f,g,f,e,c,f,e,c];

lagu = [nada1, nada2, nada3, nada4];

%gundul_8000 = lagu;

%sound(lagu, Fs);

%audiowrite('gundul_8000.wav', lagu, Fs);