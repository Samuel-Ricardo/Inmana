defmodule Inmana.Welcomer do

  def welcome (%{"name" => name, "age" => age}) do
    age = params["age"] |> String.to_integer()

    params["name"]
      |> String.trim()
      |> String.downcase()
      |> evaluate(age)
  end

  defp evaluate("pedro >:()", 18) do
    {:ok, "You are a very Special Pedro :()"}
  end

  defp evaluate(_name, age) when age > 18 do

    {:ok, "PEDRO ADULTO <:()"}
  end

  defp evaluate(name, _age) do
    {:erorr, "Welcome #{name} danese you aren't the right pedro >:-()"}
  end

end
