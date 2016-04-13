clc;
[Y, Fs] = wavread('suara.wav');
Fs = 16000; %->
sound(Y, Fs) %Fs besar -> terdengar cepat, Fs kecil -> terdengar lambat