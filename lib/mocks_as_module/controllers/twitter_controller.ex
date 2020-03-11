defmodule TestForms.MockAsModule.Controllers.TwitterController do
  @moduledoc """

  """
  alias TestForms.MocksAsModule.Twitter

  def show(%{"username" => username}, twitter \\ Twitter) do
    # ...
    twitter.get_username(username)
    # ...
  end
end
