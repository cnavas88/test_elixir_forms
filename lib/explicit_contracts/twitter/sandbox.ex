defmodule TestForms.ExplicitContract.Twitter.Sandbox do
  @moduledoc """
  Implementation to connect to Sandbox Twitter API for development mode.
  """
  use TestForms.ExplicitContract.Twitter.Contract

  def get_username(username) do
    IO.puts "<<<< SENDING TO SANDBOX >>>> "

    %{
      username: "SANDBOX => " <> username
    }
  end
end
