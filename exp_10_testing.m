[yt1,fts1] = audioread("4digit.wav");
N = length(yt1); 
freq1 = 0:fts1/N : fts1/2;
dftyt1 = fft(yt1);
if(mod(length(yt1),2)==0)
    dftyt1 = dftyt1(1:N/2);
else
    dftyt1 = dftyt1(1:((N-1)/2)+1);
end
esdtest1 = (abs(dftyt1)).^2;
plot(esdtest1);
