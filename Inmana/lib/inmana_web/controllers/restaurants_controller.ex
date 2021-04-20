defmodule InmanaWeb.RestaurantsController  do
  use InmanaWeb, :controller

  alias Inmana.Restaurant
  alias Inmana.Restaurants.Create

  action_fallback :FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
     conn
      |> put_status(:ok)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
