defmodule HelloCustomParam.Repo do
  use Ecto.Repo,
    otp_app: :hello_custom_param,
    adapter: Ecto.Adapters.Postgres
end
