function xm=SSB_DMod(xc,Ac,fc,fs)
t = linspace(1,length(xc)/fs,length(xc));
y=xc.*(2*cos(2*pi*fc.*t));
lpFilt = designfilt('lowpassfir', 'PassbandFrequency', 100,'StopbandFrequency', 200, 'PassbandRipple', 0.5,'StopbandAttenuation', 65, 'SampleRate', 1e3);
z = filter(lpFilt,y);
xm = z./(Ac*4);
end
