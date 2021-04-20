defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  alias Inmana.Welcomer

  def index(connection, params) do

    params
     |> Welcomer.welcome()
     |> handle_response(connection)
  end

  defp handle_response({:ok, message}, conn) do

    conn
     |> put_status(:ok)
     |> json(%{message: message})

  end

  defp handle_response({:error, message}, conn) do

    conn
     |> put_status(:bad_request)
     |> json(%{message: message})
  end
end
