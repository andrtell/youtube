defmodule YT.Repo do
  use Ecto.Repo,
    otp_app: :yt,
    adapter: Ecto.Adapters.Postgres
end
