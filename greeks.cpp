//
// Created by ashish on 4/23/23.
//
#include "greeks.h"
#include "bsplines.hpp"
#include "jlcxx/jlcxx.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/functions.hpp"
struct A{
     double a;
     double b;
     A(double _a,double _b):a(_a),b(_b){

     }
};

struct B{
     int k;
     A a;
     double b;
     B(const A& _a,int _k,double _b):k(_k),a(_a),b(_b){

     }
     A getA() const{
          return a;
     }
};

JLCXX_MODULE define_julia_module(jlcxx::Module& mod)
{
    mod.method("iv", implied_volatility);
    mod.method("Delta", Delta);
    mod.method("Vega", Vega);
    mod.method("Gamma", Gamma);
    mod.method("bs", blackFormula);

    mod.add_type<A>("A")
    .constructor([] (double a, double b) {
         return new A(a,b); 
         })
     .method("a",[](const A& a){
          return a.a;
     })
     .method("b",[](const A& a){
          return a.b;
     });
    
    mod.add_type<B>("B")
    .constructor([] (const A& a,int k,double b) {
         return new B(a,k,b); 
         })
     .method("getA",[](const B& b){
          return b.getA();
     }
     );

    mod.add_type<bspline_basis>("bspline_basis")
    .constructor([] (jlcxx::ArrayRef<double,1> _breakpts, int _k) {
         std::vector<double> knots(_breakpts.begin(), _breakpts.end());
         return new bspline_basis(knots,_k); 
         })
    .method("basis", [] (bspline_basis w,double x) {
         return w.basis(x); 
         } );


}
