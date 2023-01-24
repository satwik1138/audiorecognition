%File handling in MATLAB
nfiles = dir('training\*.wav');
p = 'training\';
for i = 1:400
    c = nfiles(i).name;
    pc= strcat(p,c);
    [y,fs] = audioread(pc);
    %process i.e., seeing the esd
    N = length(y); 
freq = 0:fs/N : fs/2;
dfty = fft(y);
if(mod(length(y),2)==0)
    dfty = dfty(1:N/2);
 else
    dfty = dfty(1:((N-1)/2)+1);
end
esd= (abs(dfty)).^2;
%esdk = zeros(1000,400);
for j=1:1000
    esdk(j,i) = esd(j);
end
end
%disp(esdk(1,400));
%disp(esd(1,1));
%now accurating each signal by taking its average
%for j = 0:9
  %  for k = 1:40
       % esdav = 0;
        %esdav = esdk(j*40+k) + esdav;
    %end
    %edsav = esdav/40;
    %edsa(j) = edsav;
%end
