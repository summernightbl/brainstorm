defmodule Brainstorm.Repo do
  use Ecto.Repo,
    otp_app: :brainstorm,
    adapter: Ecto.Adapters.Postgres
end
