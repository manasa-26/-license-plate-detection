% Binary FSK Modulation, AWGN Channel, FSK Demodulation, and BER Calculations

M = 2;              % Number of levels for Binary FSK
k = log2(M);        % Number of bits per symbol

EbNo = 5;           % Signal-to-noise ratio specified in dB
Fs = 20;            % Sampling frequency
nsamp = 21;         % Number of samples per symbol
freqsep = 10;       % Frequency separation between symbols

% Generate random binary signal
x1 = randi([0 1], 1, M);

% Plot the original random signal
figure
plot(x1)
title('Original Random Signal')
display(x1)

% Binary FSK Modulation
y1 = fskmod(x1, M, freqsep, nsamp, Fs);

% Plot the modulated signal
figure
plot(y1)
title('Modulated Signal')

% Add AWGN to the signal
EbNo_lin = 10^(EbNo/10);  % Convert EbNo from dB to linear scale
SNR = EbNo_lin * k;       % Calculate SNR
x2 = awgn(y1, SNR, 'measured');

% Plot the signal with AWGN
figure
plot(x2)
title('Signal with AWGN')

% FSK Demodulation
x3 = fskdemod(x2, M, freqsep, nsamp, Fs);

% Plot the demodulated signal
figure
plot(x3)
title('Demodulated Signal')

% Calculate

