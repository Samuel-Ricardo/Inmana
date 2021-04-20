defmodule Inmana.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "restaurants" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  def changeset(params) do

    %__MODULE__{}
     |> cast(params, [:email, :name])
     |> validate_required([ :email, :name])
     |> validate_length(:name, min: 2)
     |> validate_format(:email, ~r/@/)
     |> unique_constraint([:email])
  end

end
