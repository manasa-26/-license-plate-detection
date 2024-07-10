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