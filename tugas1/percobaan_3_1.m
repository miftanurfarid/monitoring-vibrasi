%sampling;
clear all;

Fs = 100;
t = 0:1/Fs:0.25;
f = 100;
x = sin(2*pi*f*t);
sound(x, Fs)

% ubah nilai f menjadi 200, 300
% 400, 500, 600, 700 dan 800