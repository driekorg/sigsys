function [] = TestDiff()
%TESTDIFF Plot DF_Gen theta vs our own calculated theta
	%901 samples are taken between -400 and 500 where our own calculated theta via the function CalcDir is compared to the theta from DF_Gen via a plot.
    x = -400:500;
    [X1, X2, originalTheta] = DF_gen(x);
    ourTheta = CalcDir(X1, X2);
    
    hold off;
    plot(x, originalTheta);
    hold on;
    plot(x, ourTheta);
    hold off;
end

