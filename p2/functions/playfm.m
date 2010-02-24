function xx = playfm( fc, fm, fic, fim, A0, I0, tau, dur, fsamp )
%PLAYFM Summary of this function goes here
%   Detailed explanation goes here

[tt, yy] = bellenv(tau, dur, fsamp);
At = A0 * yy;
It = I0 * yy;

xx = At .* cos((2*pi*fc*tt) + fic + (It .* cos(2*pi*fm*tt + fim)));
%soundsc(xx, fsamp);

end

