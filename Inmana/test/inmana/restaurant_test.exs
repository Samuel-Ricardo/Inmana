defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Inmana.Restaurant

  describe "changeset/1" do

    test "When all params are valid return a valid changeset" do

      params = %{name: "Siri Cascudo", email: "siri@fenda.com"}

      response = Restaurant.changeset(params)

      asset %Changeset{
              changes: %{
                email: "siri@fenda.com",
                name: "Siri Cascudo"
              },
              valid?: true
            } = response

    end

  end
end
