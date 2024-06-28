function Delta = BSDelta(S,K,T,r,vol,q,IsCall)
% European Black Scholes Call & Put Delta

d1 = (log(S/K) + (r - q + .5 * vol^2) * T) / (vol * sqrt(T));
d2 = d1 - vol * sqrt(T);

    if IsCall
        Delta = exp(-q * T) * normcdf(d1);
    else
        Delta = exp(-q * T) * normcdf(-d1);
    end
