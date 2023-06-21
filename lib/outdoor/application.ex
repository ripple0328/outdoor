defmodule Outdoor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      OutdoorWeb.Telemetry,
      # Start the Ecto repository
      Outdoor.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Outdoor.PubSub},
      # Start Finch
      {Finch, name: Outdoor.Finch},
      # Start the Endpoint (http/https)
      OutdoorWeb.Endpoint
      # Start a worker by calling: Outdoor.Worker.start_link(arg)
      # {Outdoor.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Outdoor.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    OutdoorWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
