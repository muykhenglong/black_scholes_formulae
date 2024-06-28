function Theta = BSTheta(S,K,T,r,vol,q,IsCall)
% European Black Scholes Call & Put Theta

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));
d2 = d1 - vol * sqrt(T);

Delta = exp(-q * T) * normcdf(d1);
Theta = q * S * Delta - r * K * exp(-r * T) * normcdf(d2) ...
    - K * exp(-r * T) * pdf('Normal',d2,0,1) * vol / (2 * sqrt(T));

    if (IsCall == 0)
        Theta = Theta + r * K * exp(-r * T) - q * S * exp(-q * T);
    end
