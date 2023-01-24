ka = .8;
Am = 1;
fm = 2;
t = 0:0.001:1;
Ac = 2;
fc = 50;
mt = Am*cos(2*pi*fm*t);
ct = Ac*cos(2*pi*fc*t);
ampmodt = (1+mt.*ka).*ct;
subplot(5,1,1)
plot(t,mt);
xlabel('Time in mSec');
ylabel('Amplitude');
title('Message signal');
subplot(5,1,2)
plot(t,ct);
xlabel('Time in mSec');
ylabel('Amplitude');
title('Carrier signal');
subplot(5,1,3)
plot(t,ampmodt);
xlabel('Time in mSec');
ylabel('Amplitude');
title('Modulated signal');
%phase modulation
Kp = 3*pi;
phasemodt  = Ac*cos(2*pi*fc*t + Kp*mt);
subplot(5,1,4)
plot(t,phasemodt);
xlabel('Time in mSec');
ylabel('Amplitude');
title('Phase Modulated signal');
%freqz(abs(phasemodt))
%frequency modulation
kf = 10^2/2*pi;
freqmod = Ac*cos(2*pi*fc*t + kf*Am*sin(2*pi*fm*t)/(pi*2*fm));
subplot(5,1,5)
plot(t,freqmod);
xlabel('Time in mSec');
ylabel('Amplitude');
title('Frequency Modulated signal');
