# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_custom_param,
  ecto_repos: [HelloCustomParam.Repo]

# Configures the endpoint
config :hello_custom_param, HelloCustomParamWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8qfej9aM0qWcWHk6tduEDI9M0wzQjduOYeJ4Ik047xhpM1Kxqa8MEumcOMzINoMA",
  render_errors: [view: HelloCustomParamWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloCustomParam.PubSub,
  live_view: [signing_salt: "SHT5zGq6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
