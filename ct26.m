
%frequency modulation
fc=1000; %carrier frequency
fs=10000; %sampling frequency (fs >2* (fc + BW))
fm=50; %modulating signal frequency
A=1; %amplitude of modulating signal 
dev=50; %frequency deviation
t=0:1/fs: (2/fm) - (1/fs);
w=2*pi*fm*t;
v=A*sin(w); %modulating signal
y=fmmod (v, fc, fs, dev);
y_demod=fmdemod (y, fc, fs, dev);
subplot (3,1,1);
plot (v) ;
title('modulating signal');
subplot (3,1,2);
plot (y);
title('frquency modulated signal');
subplot (3,1,3);
plot(y_demod);
title('demodulated signal');