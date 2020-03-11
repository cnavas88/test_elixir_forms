defmodule TestForms.ExplicitContract.Twitter.HTTPClient do
  @moduledoc """
  Implementation to connect to Twitter API.
  """
  alias TestForms.ExplicitContract.Twitter.Contract, as: Twitter

  @behaviour Twitter

  @impl Twitter
  def get_username(username) do
    IO.puts "<<<< SENDING TO HTTP VIA TWITTER >>>> "

    %{
      username: "REAL => " <> username
    }
  end
end