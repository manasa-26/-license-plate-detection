% Set the modulation order (M=4 in this case)
M = 4;

% Generate a random signal 'x' with 1000 samples and M levels
x = randi(M, 1000, 1);

% Modulate the signal using PSK modulation
y = pskmod(x, M);

% Plot the magnitude of the FFT of the modulated signal
plot(abs(fft(y)));
title('PSK Modulation');