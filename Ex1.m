clf; clear all; close all;
m = 1;
zeta = 0.1:0.1:1; k = 1;
wn = sqrt(k/m);
w = logspace(-1,1,400);
rad2deg = 180/pi;
s = j*w;
for cnt = 1:length(zeta)
xfer(cnt,:)=...; %TODO
mag(cnt,:) = abs(xfer(cnt,:));
phs(cnt,:) = angle(xfer(cnt,:))*rad2deg;
figure(1)
loglog(w,mag(cnt,:),'k-')
title('SDOF frequency response magnitudes for zeta = 0.2 to 1.0 in steps of 0.2')
xlabel('Frequency(rad/sec)')
ylabel('Magnitude')
grid
hold on
figure(2)
semilogx(w,phs(cnt,:),'k-')
title('SDOF frequency response phases for zeta = 0.2 to 1.0 in steps of 0.2')
xlabel('Frequency(rad/sec)')
ylabel('Phase')
grid
hold on
end
hold off