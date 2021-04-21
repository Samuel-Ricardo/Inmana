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

  def show(connection, %{"id" => uuid}) do
    with(:ok, %Supply{} = supply) <- Inmana.get_supply() do
      connection
       |> put_status(:ok)
       |> render("show.json", supply: supply)
    end
  end

end
