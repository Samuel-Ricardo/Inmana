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


    test "WHen all params are invalid returns a error", %{conn: conn} do
      params = %{name: "C", email: ">(:)"}

      response =
        conn
         |> post(Routes.restaurants_path(conn, :create, params))
         |> json_response(:bad_request)

      expected_response = %{
        "message" => %{
          "email" => ["has invalid format"],
          "name" => ["should be at least 2 character(s)"]
        }
      }

         assert expected_response == response
    end

  end

end
