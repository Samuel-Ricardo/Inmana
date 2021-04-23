defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do

    test "When the user is special returns a special message" do
      params = %{"name" => "pedro >()", "age" => "18"}
      expected_result = {:ok, "You are a very Special Pedro :()"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "When the user isn't special returns a special message" do
      params = %{"name" => "pedro >:)", "age" => "20"}
      expected_result = {:ok, "PEDRO ADULTO <:()"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "When the user is under age returns a message" do
      params = %{"name" => "pedro >-( )", "age" => "16"}
      expected_result = {:error, "Welcome pedro >-( ) danese you aren't the right pedro >:-()"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
