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

      params = %{name: "S", email: ""}

      response = Restaurant.changeset(params)
      expected_response = %{email: ["can't be blank"], name: ["should be at least 2 character(s)"]}

      assert %Changeset{ valid?: false } = response

      assert errors_on(response) == expected_response

    end
  end
end
