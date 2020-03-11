defmodule TestForms.ExplicitContract.Twitter.InMemory do
  @moduledoc """
  Implmenetation Mock for testing.
  """
  use TestForms.ExplicitContract.Twitter.Contract

  def get_username(username) do
    %{
      username: "Mock username: " <> username
    }
  end
end