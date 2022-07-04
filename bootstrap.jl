(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using ScoringEngineDemo
const UserApp = ScoringEngineDemo
ScoringEngineDemo.main()
