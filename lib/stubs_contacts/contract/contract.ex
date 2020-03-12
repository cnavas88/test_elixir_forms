defmodule TestForms.StubsContracts.Contract do
  @moduledoc """
  Behaviour for stubs with contracts.
  """

  @callback get_item(table :: String.t, query :: String.t) :: map()
end