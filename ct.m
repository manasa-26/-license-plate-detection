%amplitude modulation (dsb-c) of sinusoidal modulating signal
%with AWGN noise
%and demodulation
%define modulating signal frequency and carrier frequency
fm=10;
fc=250;
%calculate sampling frequency fs >2* (fc + BW)
fs=2* (fc+2* fm) *10;
%create vector for time axis
t=0:1/fs: ((2/fm)-(1/fs)); %gives exact two cycles of modulating signal
%create modulating signal x
Vm=1;
wm=2*pi*fm*t;
x=sin (wm);
x=Vm*x;
%create carrier signal c
A=1;
c=A*sin(2*pi*fc*t);

%create modulated signal vam
vam=ammod (x, fc, fs, 0, A);
%add noise
noise_snr=10;
vrec = awgn (vam,noise_snr);
%create demodulated signal y
y=amdemod (vrec, fc, fs, 0, A);
%plot signals
subplot (4,1,1);
plot (t, x);% modulating signal
ylabel ('x (t)');
subplot (4,1, 2);
plot (t, vam); %sam signal
ylabel('vam(t)');
subplot (4,1, 3);
plot (t, vrec); %tam signal with noise

ylabel('vnoise(t)');
subplot (4,1, 4);
plot (t, y);% demodulated signal with noise
ylabel('y(t)');