defmodule NoizuCollab.Repo do
  use Ecto.Repo,
    otp_app: :noizu_collab,
    adapter: Ecto.Adapters.Postgres
end
