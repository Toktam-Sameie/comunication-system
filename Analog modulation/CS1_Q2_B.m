[xm,Fs] = audioread('message.wav' );
xm_H = Hilbert(xm);
y = ((xm.') + xm_H)./2;
subplot(211)
plot(fftshift(abs(fft(xm))))
xlabel('Time');
ylabel('Amplitude');
title('Fourier transform of Message signal');
subplot(212)
plot(fftshift(abs(fft(y))))
xlabel('Time');
ylabel('Amplitude');
title('Fourier transform of analytic signal');