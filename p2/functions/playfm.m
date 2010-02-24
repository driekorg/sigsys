function xx = playfm( fc, fm, fic, fim, A0, I0, tau, dur, fsamp )
%function calculates fm  function with given values. After which the created sound is played.

[tt, yy] = bellenv(tau, dur, fsamp);
At = A0 * yy;
It = I0 * yy;

xx = At .* cos((2*pi*fc*tt) + fic + (It .* cos(2*pi*fm*tt + fim)));
soundsc(xx, fsamp);

end

