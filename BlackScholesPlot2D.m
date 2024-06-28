% Script M-file: BlackScholesPlot2D

% >>><<<
% Initial Values

S = 50;
K = 50;
T = 1;
r = .05;
vol = .20;
q = .02;
IsCall = 1;
% >>><<<

% Plot Results 0-6 from BlackScholes.m
% Vertical Axis: Transition through Results
ChangeLabel = { 'Price' 'Delta (per $)' 'Gamma (per $ per $)' 'Vega (per %)' ...
    'Theta (per day)' 'Rho (per basis point)' 'Psi (per %)' }; 
Smin = S/2;
Smax = S*1.5;
dS = round((Smax - Smin)/50,0);

for Result = 0:6
    % 2D plot
    h = @ (S) BlackScholes(S,K,T,r,vol,q,IsCall,Result);
    XData = zeros(51,1);
    YData = zeros(51,1);
    
    for j = 0:50
        XData(j+1,1) = Smin + j * dS;
        YData(j+1,1) = h(XData(j+1,1));
    end

    plot(XData,YData);
    xlabel('Stock Price');
    ylabel(ChangeLabel(Result+1));
    title('Option Price Sensitivity');
    grid on;
    
    % Press any key to advance to next plot
    if(Result < 6), pause, end
end
