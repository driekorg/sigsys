function [tt, yy] = bellenv(tau, dur, fsamp);
%BELLENV produces envelope function for bell sounds
%
% usage: [tt,yy] = bellenv(tau, dur, fsamp);
%
% input:
%            tau = time constant
%            dur = duration of the envelope
%          fsamp = sampling frequency
% output:
%             tt = time axis
%             yy = decaying exponential envelope
%
%   note: produces exponential decay for positive tau

tt = 0:1/fsamp:dur;
yy = exp(-tt/tau);

end

