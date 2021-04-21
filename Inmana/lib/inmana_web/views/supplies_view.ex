defmodule InmanaWeb.SuppliesView do
  use InmanaWeb, :view

  def render("create.json", %{Supply: supply}) do
    %{
      message: "Supplay created :)",
      supplay: supply
    }
  end
end
