import numpy as np
import scipy
import pandas as pd

def bs_call(S, K, T, r, sigma):
    d1 = (np.log(S / K) + (r + 0.5 * sigma**2) * T) / (sigma * np.sqrt(T))
    d2 = d1 - sigma * np.sqrt(T)
    return S * scipy.stats.norm.cdf(d1) - K * np.exp(-r * T) * scipy.stats.norm.cdf(d2)

def get_risk_neutral_density(calls, S0, T, r):
    strikes = calls["strike"].values
    call_prices = calls["lastPrice"].values

    (sigma,), covariance = scipy.optimize.curve_fit(lambda K,sigma: bs_call(S0, K, T, r, sigma), strikes, call_prices, p0=[1])

    strike_space = np.linspace(min(strikes), max(strikes), 1000)
    
    fit_spline = scipy.interpolate.make_interp_spline(strike_space, bs_call(S0, strike_space, T, r, sigma))
    risk_neutral_density = fit_spline.derivative(2)(strike_space) * np.exp(r * T)

    return strike_space, risk_neutral_density