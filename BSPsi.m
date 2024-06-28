function Psi = BSPsi(S,K,T,r,vol,q,IsCall)
% European Black Scholes Call & Put Psi

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));

if IsCall
    Psi = -T * S * exp(-r * T) * normcdf(d1);
else
    Psi = T * S * exp(-r * T) * normcdf(-d1);

end
