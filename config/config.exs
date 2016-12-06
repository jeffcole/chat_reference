# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :boulder_elixir_chat, BoulderElixirChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CoHonqu52zRjxYynDbhpy9gVkpIb0YuRYYTmMGdSPWyK7Ll0+AVZnxv2y97ZoWt1",
  render_errors: [view: BoulderElixirChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BoulderElixirChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
