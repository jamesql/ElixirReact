defmodule Mansion.Repo do
  use Ecto.Repo,
    otp_app: :mansion,
    adapter: Ecto.Adapters.Postgres
end
