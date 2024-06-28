function Gamma = BSGamma(S,K,T,r,vol,q)
% European Black Scholes Call & Put Gamma

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));

Gamma = exp(-q * T) * pdf('Normal',d1,0,1) / (S * vol * sqrt(T));

end
