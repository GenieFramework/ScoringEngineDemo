module ScoringEngines

using Stipple
using StippleUI
using StipplePlotly

export ScoringEngine

@reactive mutable struct ScoringEngine <: ReactiveModel
  features::R{Vector{String}} = ["pol_no_claims_discount", "pol_duration", "pol_sit_duration", "vh_value",
  "vh_weight", "vh_age", "population", "town_surface_area", "drv_age1", "drv_age_lic1"]
  feature::R{String} = "vh_value"

  groupmethods::R{Vector{String}} = ["quantiles", "linear"]
  groupmethod::R{String} = "quantiles"

  sample_size::R{Int} = 50
end

function handlers(model::ScoringEngine)
  model
end

end