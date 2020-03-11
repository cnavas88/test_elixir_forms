defmodule TestingEnv.MockAsLocal.Controllers.TwitterController do
  @moduledoc """

  """
  alias TestingEnv.MocksAsLocal.Twitter.HTTPClient

  @get_username &HTTPClient.get_username/1

  def show(%{"username" => username}, get_username_fn \\ @get_username) do
    # ... 
    get_username_fn.(username)
    # ...
  end
end