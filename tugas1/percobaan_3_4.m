% convert number of quantization levels of a wav file
clear
close all
Nsec = 3;   % Number of seconds of the sound file to process
bits = 5; % Number of bits for requantization
[x,R, nbits] = wavread('suara.wav'); 
% Read in a wave file, use any file you like
 
R, nbits % Print out the sample rate R and the number of 
%quantization levels 
nbits
x = x(1:Nsec*R)*2^(nbits-1); 
% Just keep the first Nsec of the file and normalize to 
% integer levels
 
soundsc(x,R) % Play back the original
pause(Nsec + 0.5)
xq = round(x/2^(nbits-bits)); % Scale wave file up to +-
%2^nbits
soundsc(xq,R) % listen to the requantized sound
start = 1; % Select the part of the file to plot
stop = length(x); % If stop = length(x) the entire file is 
%plotted
len = stop-start;
subplot(211)
plot(x(start:stop), 'k.')
hold on
plot(x(start:stop),'r')
axis([0 len -2^(nbits-1) 2^(nbits-1)])
grid on
title('Original audio')
xlabel('Sample Number')
ylabel('Level')
subplot(212)
plot(xq(start:stop), 'k.')
hold on
plot(xq(start:stop))
axis([0 len -2^(bits-1) 2^(bits-1)]) 
grid on
title('Re-quantized audio')
xlabel('Sample Number')
ylabel('Level')