[xm,Fs] = audioread('message.wav' );
t = linspace(1,length(xm),length(xm));
xc = DSB_Mod(xm,4,3250,Fs);
xm_prim = DSB_DMod(xc,4,3250,Fs);
subplot(311);
plot(t,xm,'y');
xlabel('Time');
ylabel('Amplitude');
title('Initial Message signal');
subplot(312);
plot(t,(xm_prim.'),'r');
xlabel('Time');
ylabel('Amplitude');
title('Secondary Message signal');
subplot(313)
plot(t, (xm.') - xm_prim ,'b' )
xlabel('Time');
ylabel('Amplitude');
title('Difference of two signal');
err=immse((xm.'),xm_prim)