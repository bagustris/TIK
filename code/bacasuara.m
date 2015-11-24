% bacasuara.m : demo menampilkan sinyal suara dalam matlab
% MK TIK D3 metrologi & instrumentasi (bagustris@yahoo.com)

[x, fs] = wavread('fena_16k.wav');
plot (x)
pause;
soundsc(x,fs);
stem (x)
pause;
stem(x(3000:4000))
