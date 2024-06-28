function Vega = BSVega(S,K,T,r,vol,q)
% European Black Scholes Call & Put Vega

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));

Vega = S * sqrt(T) * pdf('Normal',d1,0,1) * exp(-q * T);

end
