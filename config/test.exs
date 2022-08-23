use Mix.Config

# Configure your database
config :brainstorm, Brainstorm.Repo,
-  username: "postgres",
-  password: "postgres",
-  database: "quackbox_test",
-  hostname: "localhost",
+  adapter: Ecto.Adapters.Postgres,
+  username: System.get_env("POSTGRES_USER"),
+  password: System.get_env("POSTGRES_PASSWORD"),
+  database: System.get_env("POSTGRES_DB_TEST"),
+  hostname: System.get_env("POSTGRES_HOST"),
   pool: Ecto.Adapters.SQL.Sandbox
 
 # We don't run a server during test. If one is required,


# We don't run a server during test. If one is required,
# you can enable the server option below.
config :brainstorm, BrainstormWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
