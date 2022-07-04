using Stipple
using StippleUI
using StipplePlotly

using Stipple.Pages
using Stipple.ModelStorage.Sessions

using ScoringEngineDemo.ScoringEngines

Page("/", view = "views/hello.jl.html",
          layout = "layouts/app.jl.html",
          model = () -> init_from_storage(ScoringEngine, debounce = 30) |> ScoringEngines.handlers,
          context = @__MODULE__)
