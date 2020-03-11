defmodule TestForms.Unit.ExplicitContract.TwitterControllerTest do
  @moduledoc false
  use ExUnit.Case

  alias TestForms.ExplicitContract.Controllers.TwitterController

  describe "show/2." do
    test "twitter return username with explicit contracts." do
      expected_result = %{
        username: "Mock username: Carlos"
      }

      result = TwitterController.show(%{"username" => "Carlos"})

      assert result == expected_result
    end
  end
end
