defmodule CustomerPortal.Repo do
  use Ecto.Repo,
    otp_app: :customer_portal,
    adapter: Ecto.Adapters.Postgres
end
