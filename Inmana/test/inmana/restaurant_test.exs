defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do

    test "When all params are valid return a valid changeset" do

      params = %{name: "Siri Cascudo", email: "siri@fenda.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
              changes: %{
                email: "siri@fenda.com",
                name: "Siri Cascudo"
              },
              valid?: true
            } = response

    end


    test "When params are invalid return an error " do

      params = %{name: "Si", email: ""}

      response = Restaurant.changeset(params)

      assert %Changeset{ valid?: false } = response

    end
  end
end
