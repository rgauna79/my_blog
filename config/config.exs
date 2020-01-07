# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :my_blog,
  ecto_repos: [MyBlog.Repo]

# Configures the endpoint
config :my_blog, MyBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LWqvmZ8gGyEsjPUV7t3hWHUuquU1EoGuUfpl43BdE1gbM2Y9j8mqmG/98OOGDSKd",
  render_errors: [view: MyBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyBlog.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
