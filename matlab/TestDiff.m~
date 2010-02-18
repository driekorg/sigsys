function [] = TestDiff()
%TESTDIFF Plot DF_Gen theta vs our own calculated theta

    x = -400:500;
    [X1, X2, originalTheta] = DF_gen(x);
    ourTheta = CalcDir(X1, X2);
    
    hold off;
    plot(x, originalTheta);
    hold on;
    plot(x, ourTheta);
    hold off;
end

