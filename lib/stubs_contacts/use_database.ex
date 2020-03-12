defmodule TestForms.StubsContracts.UseDatabase do
  @moduledoc """
  Implementation to testing with stubs contracts
  """

  # That's how we have decouple our code from a specific implementation.
  # Now we can injecte a stub
  @database Application.get_env(
    :test_forms, :database_backend, DatabaseDefaultImplementation
  )

  def do_something(table, query) do
    @database.get_item(table, query)
  end
end