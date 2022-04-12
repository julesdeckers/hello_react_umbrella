import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hello_react, HelloReact.Repo,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "hello_react_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_react_web, HelloReactWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "b9jQgJvhls2qAsJzQxk/8yhQwEnuC89K8yEHEON/OiKl4zLMMhxoAVoJmR4Shx0E",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :hello_react, HelloReact.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
