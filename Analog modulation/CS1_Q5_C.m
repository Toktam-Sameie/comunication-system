[xm,Fs] = audioread('message.wav' );
t = linspace(0,length(xm),length(xm));
u= -6250:250:6250 ;
err=zeros(size(u));
for i=1:1:51
    xc = LSSB(xm,5,u(i),Fs);
    xm_prim = SSB_DMod(xc,5,u(i),Fs);
    err(i)=immse(xm.',xm_prim);
end
plot(u,err)