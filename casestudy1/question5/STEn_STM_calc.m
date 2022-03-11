function [STEn, STMag] = STEn_STM_calc(speech, WL_samp, WS_Samp, fs)



Num_frames = round(  (length(speech)-WL_samp)/WS_Samp );
STEn = zeros(1,Num_frames);
STMag = zeros(1,Num_frames);

for i=1:Num_frames
    startsamp = (i-1)*WS_Samp+1;
    EndSamp = startsamp+WL_samp-1;
    CurrSpeech  = speech(startsamp :EndSamp);
    CurrSpeechWin = (CurrSpeech).*hamming(WL_samp);
    STEn(i) = sum(CurrSpeechWin.*CurrSpeechWin);
    STMag(i) = sum(abs(CurrSpeechWin));
    
    
%     if(i==11)
%         
%         FFTSpec = fft(CurrSpeechWin, 512);
%         freq = (0:256)*(fs/512);
%         figure; plot (freq, 20*log10( abs(FFTSpec(1:257))),'LineWidth',2);
%         temp=1;
%     end
end

