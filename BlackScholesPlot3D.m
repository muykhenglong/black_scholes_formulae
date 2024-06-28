% Script M-file: BlackScholesPlot3D

% >>><<<
% Fixed Values:
K = 50;
r = .05;
vol = .20;
q = .02;
IsCall = 1;

% Results plotted for range of S & T
RangeS = 10:90;
RangeT = 0:0.25:3;

n = length(RangeS);
m = length(RangeT);

% Plot Results 0-6 from BlackScholes.m
% Z-axis: Transition through Results
ChangeLabel = { 'Price' 'Delta (per $)' 'Gamma (per $ per $)' 'Vega (per %)' ...
    'Theta (per day)' 'Rho (per basis point)' 'Psi (per %)' }; 

z = zeros(m,n);

for Result = 0:6
    for i = 1:m
        for j = 1:n
            z(i,j)= BlackScholes (RangeS(j),K,RangeT(i),r,vol,q,IsCall,Result);
        end
    end

    mesh(RangeS,RangeT,z);
    view(-25,15) 
    xlabel('Stock Price');
    ylabel('Time to Maturity');
    zlabel(ChangeLabel(Result+1));
    title('Option Price Sensitivity');
    box on; 

    % Press any key to advance to next plot 
    if (Result < 6), pause, end
end

