defmodule TestForms.Unit.MocksAsLocal.TwitterControllerTest do
  @moduledoc false
  use ExUnit.Case

  alias TestForms.MockAsLocal.Controllers.TwitterController

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
