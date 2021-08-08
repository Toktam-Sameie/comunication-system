function s_h = Hilbert(s)  
f = -length(s)/2:1:length(s)/2-1;
Sa = (fft(s).').*(1 + sign(f));
s_h =( ifft(Sa) - (s.') )./j;
end