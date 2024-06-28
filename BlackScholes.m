function Result = BlackScholes(S,K,T,r,vol,q,IsCall,Result)
% Carries out Black-Scholes calculations for European options on stocks,
% stock indices, currencies, and futures
% >>><<<
% S         Asset Price
% K         Strike Price
% T         Time to maturity (yrs)
% r         Domestic risk-free rate
% vol       Volatility. BUT Enter Price if Implied Volatility (Result=7)
% q         (i) Diviend yield for stock index options,
%           (ii) foreign risk free rate for currency options
%           (iii) Enter q = r domestic risk-free rate for futures options
% IsCall    1 if call, 0 if put
% Result    0 = Price;
%           1 = Delta (per $);
%           2 = Gamma (per $ per $);
%           3 = Vega (per %);
%           4 = Theta (per day);
%           5 = Rho (per basis point);
%           6 = Psi (per %);
%           7 = Implied Vol 
% >>><<<

switch Result
    case 0 % Price
        Result = BSPrice(S,K,T,r,vol,q,IsCall);
    case 1 % Delta
        Result = BSDelta(S,K,T,r,vol,q,IsCall);
    case 2 % Gamma
        Result = BSGamma(S,K,T,r,vol,q);
    case 3 % Vega
        Vega = BSVega(S,K,T,r,vol,q);
        Result = Vega/100;
    case 4 % Theta
        Theta = BSTheta(S,K,T,r,vol,q,IsCall);
        Result = Theta/365;
    case 5 % Rho
        Rho = BSRho(S,K,T,r,vol,q,IsCall);
        Result = Rho/10000;
    case 6 % Psi
        Psi = BSPsi(S,K,T,r,vol,q,IsCall);
        Result = Psi/100;
    case 7 % Implied Volatility
        Result = BSImpliedVol(S,K,T,r,vol,q,IsCall);

end