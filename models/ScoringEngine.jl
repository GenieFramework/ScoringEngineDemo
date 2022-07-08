module ScoringEngine

using Stipple

export Score

@reactive mutable struct Score <: ReactiveModel
  features::R{Vector{String}} = ["pol_no_claims_discount", "pol_duration", "pol_sit_duration", "vh_value",
  "vh_weight", "vh_age", "population", "town_surface_area", "drv_age1", "drv_age_lic1"]
  feature::R{String} = "vh_value"

  groupmethods::R{Vector{String}} = ["quantiles", "linear"]
  groupmethod::R{String} = "quantiles"

  sample_size::R{Int} = 50
end

function handlers(model::Score) :: Score
  #=
  on(model.message) do message
    model.isprocessing = true
    model.message[] = "Hello to you too!"
    model.isprocessing = false
  end
  =#

  model
end

end
