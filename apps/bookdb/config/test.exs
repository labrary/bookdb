use Mix.Config

# Configure your database
config :bookdb, Bookdb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bookdb_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
