function ImpliedVol = BSImpliedVol(S,K,T,r,Price,q,IsCall)
% European Black Scholes Call & Put Implied Volatility

f = @ (vol) BSPrice(S,K,T,r,vol,q,IsCall) - Price;
ImpliedVolSeed = .1;
ImpliedVol = fzero(f,ImpliedVolSeed);

end
