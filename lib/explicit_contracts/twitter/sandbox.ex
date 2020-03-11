defmodule TestingEnv.ExplicitContract.Twitter.Sandbox do
  @moduledoc """
  Implementation to connect to Sandbox Twitter API for development mode.
  """
  alias TestingEnv.ExplicitContract.Twitter.Contract, as: Twitter

  @behaviour Twitter

  @impl Twitter
  def get_username(username) do
    IO.puts "<<<< SENDING TO SANDBOX >>>> "

    %{
      username: "SANDBOX => " <> username
    }
  end
end