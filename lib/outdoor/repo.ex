defmodule Outdoor.Repo do
  use Ecto.Repo,
    otp_app: :outdoor,
    adapter: Ecto.Adapters.Postgres
end
