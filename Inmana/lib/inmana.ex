defmodule Inmana do
  alias Inmana.Restaurants.Create, as: Create_Restaurant

  alias Inmana.Supplies.Create, as: Create_Supply
  alias Inmana.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: Create_Restaurant, as: :call

  defdelegate create_supply(params), to: Create_Supply, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call

end
