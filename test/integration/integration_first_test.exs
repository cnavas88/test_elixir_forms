defmodule IntegrationFirstTest do
  use ExUnit.Case

  test "first unit testing" do
    IO.puts "THIS IS A INTEGRATION TESTING."

    IO.puts "#{Mix.env()}"

    assert true
  end
end
