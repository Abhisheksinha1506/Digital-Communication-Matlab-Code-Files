clc;
clear all;
close all;
f=input('Enter Max freq. of the input signal (in Hz):'); %max freq. of the input signal
fs=20*f; %nquist sampling rate
t=0:1/fs:1; %time
a=input('Enter the amplitude of input signal (in m):'); %amplitude
x=a*sin(2*pi*f*t);
%level shifting
x1=x+a;
%quantization
q_op=round(x1);
%decimal to binary
enco=de2bi(q_op,'left-msb');
%pcm receiver
deco=bi2de(enco,'left-msb');
%shifting to the original value
xr=deco-a;
%plotting
plot(t,x,'k-',t,xr,'k-');
xlabel('Time (in s)');
ylabel('Apmlitude (in m)');
title('PCM');

