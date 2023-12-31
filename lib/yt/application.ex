defmodule YT.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      YTWeb.Telemetry,
      # Start the Ecto repository
      YT.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: YT.PubSub},
      # Start Finch
      {Finch, name: YT.Finch},
      # Start the Endpoint (http/https)
      YTWeb.Endpoint
      # Start a worker by calling: YT.Worker.start_link(arg)
      # {YT.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: YT.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    YTWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
