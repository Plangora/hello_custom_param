defmodule HelloCustomParam.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      HelloCustomParam.Repo,
      # Start the Telemetry supervisor
      HelloCustomParamWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: HelloCustomParam.PubSub},
      # Start the Endpoint (http/https)
      HelloCustomParamWeb.Endpoint
      # Start a worker by calling: HelloCustomParam.Worker.start_link(arg)
      # {HelloCustomParam.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloCustomParam.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    HelloCustomParamWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
