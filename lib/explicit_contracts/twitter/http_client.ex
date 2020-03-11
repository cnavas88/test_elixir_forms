defmodule TestForms.ExplicitContract.Twitter.HTTPClient do
  @moduledoc """
  Implementation to connect to Twitter API.
  """
  use TestForms.ExplicitContract.Twitter.Contract

  def get_username(username) do
    IO.puts "<<<< SENDING TO HTTP VIA TWITTER >>>> "

    %{
      username: "REAL => " <> username
    }
  end
end