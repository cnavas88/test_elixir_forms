defmodule DatabaseDefaultImplementation do
  @moduledoc """
  Default implementation to access to database.
  """
  alias TestForms.StubsContracts.Contract

  @behaviour Contract

  @impl Contract
  def get_item(_, _), do: :call_to_database
end