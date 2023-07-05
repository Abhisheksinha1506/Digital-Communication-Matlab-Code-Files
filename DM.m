clc;
close all;
clear all;
am=input("Enter the Amplitude (in m):");
fm=input("Enter the frequency (in Hz):");
fs=20*fm; 
t=0:1/fs:1;
%Input sinusoidal signal
x=am*sin(2*pi*fm*t); 
plot(x,'m.-'); 
title("Delta Modulation");
ylabel('Amplitude (in m)')
xlabel('time (in s)');
hold on;
d=(2*pi*am*fm)/fs; %Step size
for n=1:length(x)
 if n==1
 e(n)=x(n);
 eq(n)=d*sign(e(n));
 xq(n)=eq(n);
 else
 e(n)=x(n)-xq(n-1);
 eq(n)=d*sign(e(n));
 xq(n)=eq(n)+xq(n-1);
 end 
end
stairs(xq,'black');
