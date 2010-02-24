function spectro( xx )

[S,F,T] = spectrogram(xx, 1102, 1000, 1024, 11025);
imagesc(T, F, abs(S))
axis xy

end

