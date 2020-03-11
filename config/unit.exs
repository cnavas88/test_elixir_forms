use Mix.Config

import_config "test.exs"

config :testing_env, :twitter_api, TestingEnv.ExplicitContract.Twitter.InMemory