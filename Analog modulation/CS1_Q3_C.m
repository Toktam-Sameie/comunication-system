[xm,Fs] = audioread('message.wav' );
t = linspace(0,length(xm),length(xm));
u= -4:1:4 ;
err=zeros(size(u));
for i=1:1:9
    xc = AM_Mod(xm,1,u(i),4000,Fs);
    xm_prim = AM_DMod(xc,1,u(i),4000,Fs);
    err(i)=immse(xm.',xm_prim);
end
plot(u,err)
% the best choice is the one with the least error so its mu=4&-4