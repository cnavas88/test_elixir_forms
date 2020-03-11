defmodule TestForms.ExplicitContract.Twitter.Contract do
  @moduledoc """
  Explicit Contract for twitter.

  ** Testing the boundaries
  - Without Contract: [MyApp] -> [HTTP Client] -> [Twitter API]

  - With Contract: [MyApp] -> [MyApp.Twitter (contract)]
                   [MyApp.Twitter.HTTP (contract impl)] -> [HTTPClient] -> [Twitter API] 
  """

  @doc "..."
  @callback get_username(username :: String.t) :: map()

  # Define default functions for the contract.
  defmacro __using__(_) do
    quote do
      @behaviour TestForms.ExplicitContract.Twitter.Contract

      def get_username(_) do
        raise "get_username/1 Not implemented."
      end

      defoverridable [get_username: 1]
    end
  end
end
