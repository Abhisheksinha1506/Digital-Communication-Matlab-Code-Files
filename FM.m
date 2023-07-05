clc;
clear all;
close all;

% Frequency Modulation
Ac=input("Enter carrier amplitude (in m):");
fc=input("Enter carrier frequency (in Hz):");
Am=input("Enter message amplitude (in m):");
fm=input("Enter message frequency (in Hz):");
Kf=input("Enter the deviation constant:");
b = (Kf*Am)/fm;
F = 2000;
T = 1/F;
t = 0:T:1;


%carrier
xc = Ac*sin(2*pi*fc*t);
subplot(3, 1, 1);
plot(t, xc);
title("carrier signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");

%message
subplot(3, 1, 2);
xm=Am*sin(2*pi*fm*t);
plot(t, xm);
title("message signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");

%FM wave
y = Ac*cos(2*pi*fc*t + b*(sin(2*pi*fm*t)));
subplot(3, 1, 3);
plot(t, y);
title("FM signal");
xlabel("time(in s)");
ylabel("Amplitude(in m)");



