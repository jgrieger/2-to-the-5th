// cerner_2^5_2018
use "cli"

actor Main
  new create(environment: Env) =>
    let variables = EnvVars(environment.vars)

    for (key, value) in variables.pairs() do
      environment.out.print(key + " --> " + value)
    end