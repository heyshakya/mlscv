function [b,f,t] = spec_calc(data,NFFT,fs,windowSig,o_lap)

L = length(windowSig);
M = L - o_lap;
datalen = length(data);

noOfFrames = round(datalen/M);
frameInd = 1;
for i=1:noOfFrames
    w_start = (i-1)*M + 1;
    w_end = w_start + L -1;
    
    if(w_start < 1)
        w_start = 1;
    end;
    if(w_end > length(data))
        break;
        
    end;
    
    
    
    h = windowSig;
    Signal = data(w_start:w_end);
    
    sn = Signal.*h;
    XkTmep = fft(sn,NFFT);
    Xk(frameInd,:) = XkTmep(1:NFFT/2);
    
    
    frameInd = frameInd + 1;
end
f = (1:1:NFFT/2)*(fs/NFFT);
t = 0:(M/fs):(datalen/fs);
b = Xk';
