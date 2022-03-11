function [MFCC, logFiltBankOut, logFiltBankFreq] = calc_MFCC(speech, N_filters, N_FFT, fs)
% calculate the MFCC now.
fmax = fs/2;
Mel_fmax = 1127*log(1+ (fmax/700));

% obtain the center frequencies in mel scale
N = N_filters;
% N_FFT = 512;
m=0:(N+1);
c = m*(Mel_fmax/(N+1));

% convert these to linear frequencies
h = 700* (exp(c/1127) - 1);

% convert to DFT indices
g = round( (N_FFT*h)/fs) + 1; % +1 added due to MatLab indexing 1

% Obtain the filterbank coefficients
temp=1;

H = zeros(N, (N_FFT/2)+1); 
for m=2:N+1
    for k=1:(N_FFT/2)+1
        if( k< g(m-1) || k>g(m+1)) 
            H(m-1, k) = 0;
        else
            if(k>=g(m-1) && k<=g(m))
                H(m-1, k) = (k-g(m-1))/(g(m)-g(m-1));
            else
                H(m-1, k) = (g(m+1)-k)/(g(m+1)-g(m));
            end
            
        end
    end
end


%%%%%%%%%%%%calculating MFCC %%%%%%%%%%

spec = abs(  fft(speech.*hamming(length(speech)), N_FFT));

% Filter the spectrum using 
spec = spec( 1: (N_FFT/2)+1);

% size(spec)
% size(H)
Fout = H* spec;
logFiltBankOut = log(Fout);
logFiltBankFreq = g(2:N+1) * (fs/N_FFT);

% DCT calculation
 
for l=1:13
    DCTout_temp=0;
    for m=1:N
        DCTout_temp  = DCTout_temp+ log(Fout(m))*cos( (pi*l*(m-0.5)) /N);
    end
    MFCC(l) = DCTout_temp;
end


% figure;
% for m=1:N
%     
%     plot(H(m, :), 'LineWidth', 2);
%     hold on
% end
% axis tight