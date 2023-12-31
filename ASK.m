clc %for clearing the command window
close all %for closing all the window except command window
clear all %for deleting all the variables from the memory
fc=input('Enter the freq of Sine Wave carrier (in Hz):');
fp=input('Enter the freq of Periodic Binary pulse (Message) (in Hz):');
amp=input('Enter the amplitude (For Carrier & Binary Pulse Message) (in m):');
t=0:0.001:1; % For setting the sampling interval
c=amp.*sin(2*pi*fc*t);% For Generating Carrier Sine wave
subplot(3,1,1) %For Plotting The Carrier wave
plot(t,c)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('Carrier Wave')
m=amp/2.*square(2*pi*fp*t)+(amp/2);%For Generating Square wave message
subplot(3,1,2) %For Plotting The Square Binary Pulse (Message)
plot(t,m)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('Binary Message Pulses')
w=c.*m; % The Shift Keyed Wave
subplot(3,1,3) %For Plotting The Amplitude Shift Keyed Wave
plot(t,w)
xlabel('Time (in sec)')
ylabel('Amp (in m)')
title('Amplitide Shift Keyed Signal')
