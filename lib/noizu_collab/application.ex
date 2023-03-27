defmodule NoizuCollab.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      NoizuCollab.Repo,
      # Start the Telemetry supervisor
      NoizuCollabWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: NoizuCollab.PubSub},
      # Start the Endpoint (http/https)
      NoizuCollabWeb.Endpoint
      # Start a worker by calling: NoizuCollab.Worker.start_link(arg)
      # {NoizuCollab.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NoizuCollab.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    NoizuCollabWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
