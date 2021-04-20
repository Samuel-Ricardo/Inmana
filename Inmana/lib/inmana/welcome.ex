defmodule Inmana.Welcome do

  def welcome (params) do
    age = params["age"]

    params["name"]
      |> String.trim()
      |> String.downcase()
      |> evaluate(age)
  end

  defp evaluate("Pedro >:()", "18") do
    "You are a very Special Pedro >()"
  end

  defp evaluate(name, _age) do
    "Welcome #{name} danese you aren't pedro >:-()"
  end

end
