[xm,Fs] = audioread('message.wav' );
xm_H = Hilbert(xm);
subplot(211)
plot(real(hilbert((xm))))
xlabel('Time');
ylabel('Amplitude');
title('hilbert transform of Message signal by default function');
subplot(212)
plot(real(xm_H))
xlabel('Time');
ylabel('Amplitude');
title('Hilbert transform of Message signal by new method');