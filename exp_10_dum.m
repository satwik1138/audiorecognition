[y1,fs1] =audioread('C:\Users\Satwik\OneDrive\Desktop\drive-download-20221026T043932Z-001\training\0_01_13.wav');
%audioread returns a y which is a m x n matrix which essentially tells about m number of samples and n number of channel and fs is the sampling frequency a positive scalar 
[y2,fs2] =audioread('C:\Users\Satwik\OneDrive\Desktop\drive-download-20221026T043932Z-001\training\5_01_13.wav');
[y3,fs3] =audioread('C:\Users\Satwik\OneDrive\Desktop\drive-download-20221026T043932Z-001\training\7_01_13.wav');
subplot(3,2,1);
plot(y1);
title('zero signal')
legend('signal 1');
subplot(3,2,2);
plot(y2);
legend('signal 2');
subplot(3,2,3);
plot(y3);
legend('signal3');
%now plotting the freq response
N = length(y1); 
freq1 = 0:fs1/N : fs1/2;
dfty1 = fft(y1);
if(mod(length(y1),2)==0)
    dfty1 = dfty1(1:N/2);
else
    dfty1 = dfty1(1:((N-1)/2)+1);
end
esd1 = (abs(dfty1)).^2;
esd1 = esd1(1:1000);
subplot(3,2,4);
plot(esd1);
title('esd of zero by speaker 13')
legend('1');
N2 = length(y2); 
freq2 = 0:fs2/N2 : fs2/2;
dfty2 = fft(y2);
if(mod(length(y2),2)==0)
    dfty2 = dfty2(1:N2/2);
else
    dfty2 = dfty2(1:((N2-1)/2)+1);
end
esd2 = (abs(dfty2)).^2;
esd2 = esd2(1:1000);
subplot(3,2,5);
plot(esd2);
legend('2');
N3 = length(y3); 
freq3 = 0:fs3/N3 : fs3/2;
dfty3 = fft(y3);
if(mod(length(y3),2)==0)
    dfty3 = dfty3(1:N3/2);
else
    dfty3 = dfty3(1:((N3-1)/2)+1);
end
esd3 = (abs(dfty3)).^2;
esd3 = esd3(1:1000);
subplot(3,2,6);
plot(esd3);
legend('3');

   

