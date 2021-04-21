defmodule InmanaWeb.SuppliesController do
  use InmanaWeb, :controller

  alias Inmana.Supply
 

  action_fallback FallbackController

  def create(connection, params) do
    with {:ok, %Supply{} = supply} <- Inmana.create_supply(params) do
      connection
       |> put_status(:created)
       |> render("create.json", supply: supply)
    end
  end

end
