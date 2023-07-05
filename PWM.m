clc;
clear all;
close all;

fs=input('Comparator Sawtooth frequency (in Hz):');
fm=input('Message frequency (in Hz):');
a=input('Enter Amplitude of Message (in m):');
t=0:0.0001:1;
stooth=1.01*a.*sawtooth(2*pi*fs*t);
subplot(3,1,1);
plot(t,stooth);
title('Comparator Wave');
ylabel('Amplitude (in m)');
xlabel('time (in s)');
msg=a.*sin(2*pi*fm*t);
subplot(3,1,2);
plot(t,msg);
title('Message Signal');
ylabel('Amplitude (in m)');
xlabel('time (in s)');
for i=1:length(stooth)
if (msg(i)>=stooth(i))
    pwm(i)=1;
else
    pwm(i)=0;
end
end

subplot(3,1,3);
plot(t,pwm);
title('PWM');
ylabel('Amplitude (in m)')
xlabel('time (in s)');
axis([0 1 0 1.2]);

