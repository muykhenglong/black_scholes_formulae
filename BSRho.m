function Rho = BSRho(S,K,T,r,vol,q,IsCall)
% European Black Scholes Call & Put Rho

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));
d2 = d1 - vol * sqrt(T);

if IsCall
    Rho = K * T * exp(-r * T) * normcdf(d2);
else
    Rho = - K * T * exp(-r * T) * normcdf(-d2);

end
