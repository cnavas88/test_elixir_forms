defmodule TestForms.Support.Stubs.Database do
  @moduledoc """
  Generate the stub for access to Database
  """  
  alias TestForms.StubsContracts.Contract

  @behaviour Contract
  
  @impl Contract
  def get_item("first_table", "first_query"), do: :one_value
  def get_item("first_table", "second_query"), do: :two_value
  def get_item(_, _), do: :error_value
end