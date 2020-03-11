defmodule TestForms.Unit.MocksAsModule.TwitterControllerTest do
  @moduledoc """
  
  """
  use ExUnit.Case

  alias TestForms.MockAsModule.Controllers.TwitterController

  describe "show/2." do
    test "twitter return username with mocks as local." do
      # Simulate heavy work
      defmodule TestDependency do
        def get_username(_) do
          %{
            username: "Heavy work"
          }
        end
      end

      expected_result = %{
        username: "Heavy work"
      }

      result = TwitterController.show(%{"username" => "Carlos"}, TestDependency)

      assert result == expected_result
    end
  end
end