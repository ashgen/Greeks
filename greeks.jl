# Load the module and generate the functions
module greeks
using CxxWrap
@wrapmodule(joinpath("build","libGreeks"))

function __init__()
  @initcxx
end
end

transform!(data, [:cp,:strike,:fmid] => ByRow( (cp,strike,fmid)-> round(100*log(fmid/strike)) if cp=0 else round(100*log(strike/fmid) ) ) => :moneyness)