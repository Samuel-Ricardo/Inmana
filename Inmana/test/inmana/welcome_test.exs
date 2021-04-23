defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "When the user is speciel returns a special message"
      params = %{"name" => "pedro >()", "age" => "18"}
      expected_result = {:ok, "You are very special Pedro >()"}

      result = Welcomer.welcome(params)

      assert result == expected_result
  end
end
