//
// Created by ashish on 4/23/23.
//
#include "greeks.h"
#include "bsplines.hpp"
#include "jlcxx/jlcxx.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/functions.hpp"
JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
    mod.method("iv", implied_volatility);
    mod.method("Delta", Delta);
    mod.method("Vega", Vega);
    mod.method("Gamma", Gamma);
    mod.method("bs", blackFormula);


    mod.add_type<bspline_basis>("bspline_basis")
    .constructor([] (jlcxx::ArrayRef<double,1> _breakpts, int _k) {
         std::vector<double> knots(_breakpts.begin(), _breakpts.end());
         return new bspline_basis(knots,_k); 
         })
    .method("basis", [] (bspline_basis w,double x) {
         return w.basis(x); 
         } );


}
