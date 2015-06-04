use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_db_perf, PhoenixDbPerf.Endpoint,
  secret_key_base: "CbNkEWBOkrB0h4tAspyuH3QQ5MCR5ZM+XGO/fHh3ddXTpMg60CuTIBVsO8UKESOC"

# Configure your database
config :phoenix_db_perf, PhoenixDbPerf.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "alechipshear",
  password: "",
  database: "phoenix_db_perf_dev",
  size: 20 # The amount of database connections in the pool
