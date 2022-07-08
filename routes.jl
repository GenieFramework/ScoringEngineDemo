using Stipple
using StippleUI
using StipplePlotly

using Stipple.Pages
using Stipple.ModelStorage.Sessions

using ScoringEngineDemo.ScoringEngine

Page("/", view = "views/hello.jl.html",
          layout = "layouts/app.jl.html",
          model = () -> Score |> init_from_storage |> ScoringEngine.handlers,
          context = @__MODULE__)
