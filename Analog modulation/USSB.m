function xc  = USSB( xm,Ac,fc,fs )
t = linspace(1,length(xm)/fs,length(xm));
xc = (Ac/2) .* (((xm.') .* cos(2*pi*fc.*t))-(((imag(hilbert(xm)).') .* sin((2*pi)*fc .*t))));
end

