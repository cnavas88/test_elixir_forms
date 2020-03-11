defmodule TestingEnv.Unit.MocksAsLocal.TwitterControllerTest do
  @moduledoc """
  
  """
  use ExUnit.Case

  alias TestingEnv.MockAsLocal.Controllers.TwitterController

  describe "show/2." do
    test "twitter return username with mocks as local." do
      get_username_fn = fn _ ->
        %{
          username: "Mock as local: Carlos"
        }
      end

      expected_result = %{
        username: "Mock as local: Carlos"
      }

      result = TwitterController.show(%{"username" => "Carlos"}, get_username_fn)

      assert result == expected_result
    end
  end
end