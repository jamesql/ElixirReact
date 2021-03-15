# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mansion,
  ecto_repos: [Mansion.Repo]

# Configures the endpoint
config :mansion, MansionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B5yYNKqndLuaz2P1J6OH78Xb1km6yBc6bprD+gnxsTSffwMY2sypihJ/YTSZQ0Ce",
  render_errors: [view: MansionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mansion.PubSub,
  live_view: [signing_salt: "2To3TY/6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
