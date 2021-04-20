defmodule InmanaWeb.FallbackController  do
  use InmanaWeb, :controller

  alias InmanaWeb.ErrorView

  def call(connection, {:error, %{result: result, status: status}}) do

    connection
     |> put_status(status)
     |> put_view(ErrorView)
     |> render("error.json", result: result)
  end
end
