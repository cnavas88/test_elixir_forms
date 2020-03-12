defmodule TestForms.Unit.StubContract.UseDatabaseTest do
  @moduledoc false
  use ExUnit.Case

  alias TestForms.StubsContracts.UseDatabase

  describe "do_something/2." do
    test "the code should do this" do
      assert UseDatabase.do_something("first_table", "first_query") == :one_value
    end

    test "the code should do this." do
      assert UseDatabase.do_something("first_table", "second_query") == :two_value
    end

    test "the code should do this-" do
      assert UseDatabase.do_something("this_table", "this_query") == :error_value
    end
  end
end
