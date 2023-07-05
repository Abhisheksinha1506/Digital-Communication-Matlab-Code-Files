clc;
clear all;
close all;

fc=input("Carrier signal frequency (in Hz):");
fm=input("Message signal frequency (in Hz):");
fs=input("Sampling signal frequency (in Hz):");

t=1;
dutycycle=50;
n=0:1/fs:t-1/fs;
s=square(2*pi*fc*n,dutycycle);

s(s<0)=0;
m=sin(2*pi*fm*n);
pam=m.*(s>0);
subplot(3,1,1);
plot(n,s);
title("Carrier signal");
ylabel("Amplitude (in m)");
xlabel("time (in s)");
ylim([-0.2 1.2]);
subplot(3,1,2);
plot(n,m);
title("Message signal");
ylabel("Amplitude (in m)");
xlabel("time (in s)");
ylim([-1.2 1.2]);

subplot(3,1,3);
plot(n,pam);
title("Modulated signal");
ylabel("Amplitude (in m)");
xlabel("time (in s)");
ylim([-1.2 1.2]);