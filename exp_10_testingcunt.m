[yt1,fts1] = audioread("test\8_01_43.wav");
N = length(yt1); 
freq1 = 0:fts1/N : fts1/2;
dftyt1 = fft(yt1);
if(mod(length(yt1),2)==0)
    dftyt1 = dftyt1(1:N/2);
else
    dftyt1 = dftyt1(1:((N-1)/2)+1);
end
esdt1 = (abs(dftyt1)).^2;
esdt1 = esdt1(1:1000);
%plot (esdt1(1:1000));
x(1,1) = immse(esdt1,esdav0);
x(2,1) = immse(esdt1,esdav1);
x(3,1) = immse(esdt1,esdav2);
x(4,1) = immse(esdt1,esdav3);
x(5,1) = immse(esdt1,esdav4);
x(6,1) = immse(esdt1,esdav5);
x(7,1) = immse(esdt1,esdav6);
x(8,1) = immse(esdt1,esdav7);
x(9,1) = immse(esdt1,esdav8);
x(10,1) = immse(esdt1,esdav9);
m = min(x);
j = 0;
 for i = 1:10
    if x(i,1) == m
        j = i-1;
    end
 end
 disp(j);

