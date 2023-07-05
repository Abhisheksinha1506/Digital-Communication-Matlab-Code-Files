clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
t=0:.001:1; % For setting the sampling interval
fc=input('Enter frequency of Carrier Sine wave (in Hz): ');
fm=input('Enter Message frequency (in Hz): ');
amp=input('Enter Carrier & Message Amplitude(Assuming Both Equal) (in m):');
c=amp.*sin(2*pi*fc*t);% Generating Carrier Sine
subplot(3,1,1) %For Plotting The Carrier wave
plot(t,c)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('Carrier')
m=square(2*pi*fm*t);% For Plotting Message signal
subplot(3,1,2)
plot(t,m)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('Message Signal')% Sine wave multiplied with square wave in order to generate PSK
x=c.*m;
subplot(3,1,3) % For Plotting PSK (Phase Shift Keyed) signal
plot(t,x)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('PSK')
