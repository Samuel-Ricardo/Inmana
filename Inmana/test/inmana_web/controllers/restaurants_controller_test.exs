defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase, async: true

  describe "create/2" do

    test "WHen all params are valid< create the user", %{conn: conn} do
      params = %{name: "Siri Cascudo", email: "siri@fenda.com"}

      response =
        conn
         |> post(Routes.restaurants_path(conn, :create, params))
         |> json_response(:ok)

         assert %{
          "message" => "Restaurant created",
          "restaurant" => %{
            "email" => "siri@fenda.com",
            "id" => _id,
            "name" => "Siri Cascudo"
          }
        } = response
    end
    
  end

end
