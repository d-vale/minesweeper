import Config

# Configure the database connection.
#
# The various connection parameters (host, port, username, password, database
# name) are provided by specifying an URL (see
# https://hexdocs.pm/ecto/Ecto.Repo.html#module-urls for more information).
#
# The format is:  "ecto://<username>[:<password>]@<host>[:<port>]/<database-name>"
# For example:    "ecto://minesweeper:mysecretpassword@localhost:5432/minesweeper"
config :minesweeper, Minesweeper.Repo,
  url:
    if(config_env() != :test,
      # This is the production database URL. You can override it at runtime with
      # the $MINESWEEPER_DATABASE_URL environment variable.
      do: "ecto://minesweeper:Archidep.10@localhost/minesweeper",
      # This is a separate test database URL to avoid overwriting
      # development/production data during tests. You only need to configure
      # this if you want to run the automated tests.
      else: "ecto://minesweeper:Archidep.10@localhost/minesweeper-test"
    )

# Configure the web endpoint.
config :minesweeper, MinesweeperWeb.Endpoint,
  http: [
    # Set the HTTP port the server listens on.
    port: 3002
  ],
  # The secret key base is used as a base to generate secrets for encrypting and
  # signing data. For example, cookies and tokens are signed by default. This
  # should be a long random string.
  #
  # You can override it at runtime with the $MINESWEEPER_SECRET_KEY_BASE
  # environment variable.
  #
  # Run "mix phx.gen.secret" at the root of this repository to generate a
  # suitable value for the secret key base.
  secret_key_base: "e1VywzpRp7U9atWDWwSEt7LKW9QoD/17Zaw4brCmSUwHkAmMNUT/M0eBkwG0Uxnc",
  # The base URL at which the application is publicly available. You would
  # typically use the same host as in the configuration of your reverse proxy.
  url: [
    host: "minesweeper.dpe.archidep2.ch",
    port: 443
  ]

