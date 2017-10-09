use Mix.Config

config :bookdb, ecto_repos: [Bookdb.Repo]

import_config "#{Mix.env}.exs"
