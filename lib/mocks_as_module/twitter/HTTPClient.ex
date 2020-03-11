defmodule TestForms.MocksAsModule.Twitter.HTTPClient do
    @moduledoc """
    Implementation to connect to Twitter API.
    """
  
    def get_username(username) do
      IO.puts "<<<< SENDING TO HTTP VIA TWITTER >>>> "
  
      %{
        username: "REAL => " <> username
      }
    end
  end