% demo of amplitude modulation
% from the MATLAB help
% bagustris@yahoo.com 19/10/2014
% plot sinyal asli, sinyal pembawa, hasil modulasi

% Sample the signal 100 times per second, for 2 seconds.
Fs = 100;
t = [0:2*Fs+1]'/Fs;
Fc = 10; % Carrier frequency
t2 = [0:2*Fc+1]'/Fc;
x = sin(2*pi*t); % Sinusoidal signal
x2 = sin(2*pi*Fc*t); % Modulation signal

% Modulate x using single- and double-sideband AM.
ydouble = ammod(x,Fc,Fs);
ysingle = ssbmod(x,Fc,Fs);

dev = 50;   % deviation for freq mod
yfreq = fmmod(x,Fc,Fs, dev);
yphase = pmmod(x,Fc,Fs,dev);

figure(1);
xlim([0 200]);
subplot(311); plot(x);xlim([0 200]);
subplot(312); plot(x2);xlim([0 200]);
subplot(313); plot(ydouble);xlim([0 200]);


figure(2);
subplot(311); plot(x);xlim([0 200]);
subplot(312); plot(x2);xlim([0 200]);
subplot(313); plot(yfreq);xlim([0 200]);


figure(3);
subplot(311); plot(x);xlim([0 200]);
subplot(312); plot(x2); xlim([0 200]);
subplot(313); plot(yphase);xlim([0 200]);

% % Compute spectra of both modulated signals.
% zdouble = fft(ydouble);
% frqdouble = [0:length(zdouble)-1]*Fs/length(zdouble)/2;
% zsingle = fft(ysingle);
% zsingle = abs(zsingle(1:length(zsingle)/2+1));
% frqsingle = [0:length(zsingle)-1]*Fs/length(zsingle)/2;
% 
% % Plot spectra of both modulated signals.
% figure(2);
% subplot(2,1,1); plot(frqdouble,zdouble);
% title('Spectrum of double-sideband signal');
% subplot(2,1,2); plot(frqsingle,zsingle);
% title('Spectrum of single-sideband signal');
