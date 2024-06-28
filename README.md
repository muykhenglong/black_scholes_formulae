# Black-Scholes Option Pricing and Greeks

This repository contains a collection of MATLAB scripts designed to calculate option prices and various Greeks using the Black-Scholes model and provide both 2D and 3D visualizations of how different parameters affect the pricing and sensitivities of European options.

## Overview

The scripts in this repository use the Black-Scholes formula, a fundamental theorem in financial mathematics for pricing European options and calculating the Greeks.

## Contents


- **BlackScholes.m**: Central function that handles the calculation of prices and Greeks based on input parameters.
- **BSPrice.m, BSDelta.m, BSGamma.m, BSVega.m, BSTheta.m, BSRho.m, BSPsi.m**: Functions that compute specific Greeks and option price.
- **BSImpliedVol.m**: Function to calculate implied volatility using the Black-Scholes model.
- **BlackScholesPlot2D.m**: Plots 2D graphs for option prices and Greeks against stock price changes.
- **BlackScholesPlot3D.m**: Generates 3D surfaces showing the impacts of stock price and time to maturity on the option's characteristics.
