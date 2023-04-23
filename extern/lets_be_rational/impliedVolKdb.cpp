//
// Created by ashish on 1/21/20.
//
#include "../kdb/k.h"
#include "src/importexport.h"

EXPORT_EXTERN_C double
implied_volatility_from_a_transformed_rational_guess(double price, double F, double K, double T, double q /* q=±1 */);
extern "C" {
K iv(K price, K F, K strike, K T, K q) {
    return kf(implied_volatility_from_a_transformed_rational_guess(price->f, F->f, strike->f, T->f, q->f));
}
}


