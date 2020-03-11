defmodule TestForms.ExplicitContract.Controllers.TwitterController do
  @moduledoc """
  - We can configure the twitter api for differents environments
  - Example:
    * Before => TestingEnv.TwitterClient.get_username(username)
    * After => twitter_api().get_username(username)
  
  - This way we can choose the best strategy to retrieve data from 
  Twitter per environment. (Mock, Real Twitter API and Sandbox API).
  """

  def show(%{"username" => username}) do
    # ... 
    twitter_api().get_username(username)
    # ...
  end

  defp twitter_api do
    Application.get_env(:test_forms, :twitter_api)
  end
end