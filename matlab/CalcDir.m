function [direction] = CalcDir(signal1, signal2)
%CALCDIR Calculates direction of the signals
%   given complex signals1 and 2, the direction is calculated by first
%   calculating de phase differences in rad. This is then converted to
%   seconds which is then used to calculate the direction. The direction is
%   returned in degrees.
    d = 0.4;
    ff = 400;
    ww = 2 * pi * ff;
    c = 1000/3;
    
    dfi = angle(signal1 .* conj(signal2));
    dt = dfi / ww;
    direction = real(asin(c/d*dt) * (180/pi));
end

