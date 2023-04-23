#ifndef GREEK_H
#define GREEK_H
#pragma once
#include "importexport.h"
#include <cmath>
EXPORT_EXTERN_C double
implied_volatility_from_a_transformed_rational_guess(double price, double F, double K, double T, double q /* q=±1 */);
auto implied_volatility(double price, double F, double K, double T,
                        bool cp) -> double {
  auto q=cp?1:-1;
  auto implicit_val = std::max(q * (F - K), 0.0);
  if (price < implicit_val) {
    return 0;
  }
  auto x =
      implied_volatility_from_a_transformed_rational_guess(price, F, K, T, q);
  return x > 4 ? 0 : x;
};
static constexpr double M_SQRT_2_PI = 0.5 * M_2_SQRTPI * M_SQRT1_2;

inline double CND(double X) { return 0.5 * erfc(-X * M_SQRT1_2); }

inline double ND(double X) { return M_SQRT_2_PI * exp(-0.5 * X * X); }

inline double d1(double futurePrice, double strikePrice, double volatility,
                      double timeToExpiry) {
    auto stdDev = volatility * sqrt(timeToExpiry);
    return (log(futurePrice / strikePrice) + 0.5 * stdDev * stdDev) / (stdDev);
}

inline double d2(double futurePrice, double strikePrice, double volatility,
                      double timeToExpiry) {
    return d1(futurePrice, strikePrice, volatility, timeToExpiry) -
           volatility * sqrt(timeToExpiry);
}

inline double Delta(double strikePrice, double timeToExpiry,
                         double lFuturePrice, double volatility, bool isCall) {
    double delta = CND(d1(lFuturePrice, strikePrice, volatility, timeToExpiry));
    return isCall ? delta : (delta - 1);
}

inline double Gamma(double strikePrice, double timeToExpiry,
                         double lFuturePrice, double volatility,
                         bool isCall = true) {
    return ND(d1(lFuturePrice, strikePrice, volatility, timeToExpiry)) /
           (lFuturePrice * volatility * sqrt(timeToExpiry));
}

inline double Vega(double strikePrice, double timeToExpiry,
                        double lFuturePrice, double volatility,
                        bool isCall = true) {
    return (lFuturePrice * lFuturePrice * volatility * timeToExpiry) *
           Gamma(strikePrice, timeToExpiry, lFuturePrice, volatility);
}

inline double blackFormula(double strikePrice, double timeToExpiry,
                                double lFuturePrice, double volatility,
                                bool isCall) {
    double d11 = d1(lFuturePrice, strikePrice, volatility, timeToExpiry);
    double d22 = d11 - volatility * sqrt(timeToExpiry);
    double cp = lFuturePrice * CND(d11) - strikePrice * CND(d22);
    return isCall ? cp : (cp + strikePrice - lFuturePrice);
}

// Using atm volaitlity approximation formula
inline double atmVolatility(double atmPrice, double timeToExpiry,
                                 double futurePrice) {
    return atmPrice / (M_SQRT_2_PI * sqrt(timeToExpiry) * futurePrice);
}
#endif