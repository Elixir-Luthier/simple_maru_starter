defmodule MaruCooking.Router.Homepage do
  use Maru.Router

  @moduledoc """
  This is a simple router created with Maru
  """
  get do
    json(conn, %{ hello: :world })
  end
end

defmodule MaruCooking.API do
  use Maru.Router

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount MaruCooking.Router.Homepage

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
