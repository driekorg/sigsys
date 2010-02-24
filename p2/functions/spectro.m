function spectro( xx )
%function creates clear spectogram for an input with a sampling rate of 11025

[S,F,T] = spectrogram(xx, 1102, 1000, 1024, 11025);
imagesc(T, F, abs(S))
axis xy

end