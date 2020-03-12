use Mix.Config

import_config "test.exs"

config :test_forms, twitter_api: TestForms.ExplicitContract.Twitter.InMemory

config :test_forms, database_backend: TestForms.Support.Stubs.Database