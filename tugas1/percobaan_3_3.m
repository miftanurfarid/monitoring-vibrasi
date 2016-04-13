%Quantize a signal to n bits.  This code assumes the signal is %between -1 and +1.
 
n=8;                            %Number of bits;
m=120;                          %Number of samples;
x=sawtooth(2*pi*(0:(m-1))/m);	%signal between -1 and 1.
                                %Trying "sin()" instead of "sawtooth"
                                %results in more interesting error(to   
  				   %the extent that error is interesting).
x(find(x>=1))=(1-eps);     %Make  signal from -1 to just less than 1.
xq=floor((x+1)*2^(n-1));   %Signal is one of 2^n int values (0 to 
                           % 2^n-1)
xq=xq/(2^(n-1));           %Signal is from 0 to 2 (quantized)
xq=xq-(2^(n)-1)/2^(n);     %Shift signal down (rounding)
 
xe=x-xq;                   %Error
 
stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','quantized','error','Location','Southeast')
title(sprintf('Signal, Quantized signal and Error for %g bits, %g quantization levels',n,2^n));
hold off
