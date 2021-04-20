defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  alias Inmana.Welcomer

  def index(connection, params) do

    params
     |> Welcomer.welcome()
     |> handle_response(connection)
  end

  defp handle_response({:ok, message}, connection), do: render_response(connection, message, :ok)

  defp handle_response({:error, message}, connection), do: render_response(connection, message, :bad_request)

  defp render_response(connection, message, status) do

    connection
     |> put_status(status)
     |> json(%{message: message})

  end
end
