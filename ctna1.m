%fsk modulation, AWGN, FSK Demodulation, and BER Calculations
M = 2; k=log2 (M); % Binary FSK and number of levels
EbNO = 5; % signal to noise ratio is specified in dB
Fs = 20; nsamp = 21; freqsep = 10;
x1 = randi(1000,1,M); %x1 Random signal
figure
plot (x1)
display (x1)
y1= fskmod (x1, M, freqsep, nsamp, Fs); %yl Modulated signal.
figure
plot (y1)
x2 = awgn (y1, EbNo+10*log10(k) -10*log10 (nsamp),...
'measured', [], 'dB'); %x2 signal with gaussian noise in channel figure
plot (x2)
x3 = fskdemod (x2,M, freqsep, nsamp, Fs); %x3 Demodulated signal.
figure
plot (x3)
[num, BER]= biterr (x1,x3) %calculated Bit error rate
BER_theory = berawgn (EbNo,'fsk', M, 'noncoherent') % Theoretical Bit error rate %comparison of two signals (original signal and signal with noise)
t = 0:.1:10;
x = sawtooth (t); % Create sawtooth signal.
y = awgn (x, 5, 'measured', [], 'db'); % Add white Gaussian noise. figure
plot (t,x, t, y) % Plot both signals.
legend (Original signal', 'Signal with AWGN');