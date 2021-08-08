function xc = AM_Mod(xm,Ac,u,fc,fs)
%This function modulate our function xm(t) and will give us xc(t)
t = linspace(1,length(xm),length(xm));
carrier=cos(2*pi*fc*t); % carrier signal
xc=(1+u.*(xm.')).*(Ac.*carrier);
end