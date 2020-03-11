defmodule TestingEnv.ExplicitContract.Twitter.InMemory do
  @moduledoc """
  Implmenetation Mock for testing.
  """
  alias TestingEnv.ExplicitContract.Twitter.Contract, as: Twitter

  @behaviour Twitter

  @impl Twitter
  def get_username(username) do
    %{
      username: "Mock username: " <> username
    }
  end
end