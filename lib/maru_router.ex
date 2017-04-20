defmodule MaruCooking.Router.Homepage do
  use Maru.Router

  require MaruCooking.FoodData
  @moduledoc """
    This is a simple router created with Maru
  """
  get :all do
    json(conn, MaruCooking.FoodData.get_menu)
  end

  params do
    requires :item, type: Atom
  end
  get :ingredients do
    json(conn, MaruCooking.FoodData.ingredients(params[:item]))
  end

  params do
    requires :item, type: Atom
  end
  post :eat do
    json(conn, MaruCooking.FoodData.eat(params[:item]))
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
