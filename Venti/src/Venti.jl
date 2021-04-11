module Venti

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Venti))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = Venti.Genie))
  Base.eval(Main, :(using Genie))
end

end
