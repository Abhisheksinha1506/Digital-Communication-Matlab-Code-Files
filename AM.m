clc;
clear all;
close all;

% Amplitude Modulation

Ac=input("Enter carrier amplitude (in m):");
fc=input("Enter carrier frequency (in Hz):");
Am=input("Enter message amplitude (in m):");
fm=input("Enter message frequency (in Hz):");
m = 1;
F = 2000;
T = 1/F;
t=0:T:1;

%carrier
xc = Ac*sin(2*pi*fc*t);
subplot(3, 1, 1);
plot(t, xc);
title("Carrier Signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");

%message
subplot(3, 1, 2);
xm=Am*sin(2*pi*fm*t);
plot(t, xm);
title("Message Signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");


%AM wave
y = Ac+Am*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(3, 1, 3);
plot(t, y);
title("AM signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");
