# Load the module and generate the functions
module greeks
using CxxWrap,DataFrames,CSV,LoopVectorization
@wrapmodule(joinpath("build","libGreeks"))

function __init__()
  @initcxx
end
end

mutable struct A
  a::Float64
  b::Float64
end

mutable struct B
  k::Int
  a::A
  b::Float64
end
using StaticArrays
function ema(x,span::Int)
  alpha = 2.0/(1 + span)
  eval = x
  @inbounds for i ∈ eachindex(eval)[2:end]
    eval[i] = (1 - alpha)*eval[i - 1] + alpha*x[i]
  end
  return eval
end

using ShiftedArrays
function norm(x,y,s::Int)
  emax=ema(x,s)
  emay=ema(y,s)
  return @. (x - y)/(x + y)
end
function smooth!(data::DataFrame,span::Vector{Int64})
  for s in span
      transform!(groupby(data,:date),[:meanbidsize,:meanasksize] => ( (x,y) -> norm(x,y,s))  => Symbol("obx",s))
    end
end

function ret!(data::DataFrame,span::Vector{Int64})
  for s in span
      transform!(groupby(data,:date),[:vwap] => (x -> log.(ShiftedArrays.lead(x,s)./x) )  => Symbol("ret",s))
    end
end


using DataFrames, Missings
