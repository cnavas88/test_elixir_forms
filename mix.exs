defmodule TestForms.MixProject do
  use Mix.Project

  @test_envs [:unit, :integration]
  @version "0.1.0"

  def project do
    [
      app: :test_forms,
      version: @version,
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      test_paths: test_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      elixirc_options: [
        warnings_as_errors: true
      ],
      deps: deps()
    ]
  end

  defp aliases() do
    [
      "test.all": ["test.unit", "test.integration"],
      "test.unit": &run_unit_tests/1,
      "test.integration": &run_integration_tests/1
    ]
  end

  defp elixirc_paths(env) when env in @test_envs, do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end

  defp test_paths(:integration), do: ["test/integration"]
  defp test_paths(:unit), do: ["test/unit"]
  defp test_paths(_), do: ["test/unit", "test/integration"]

  defp run_integration_tests(args), do: test_with_env("integration", args)
  defp run_unit_tests(args), do: test_with_env("unit", args)

  defp test_with_env(env, args) do
    args = if IO.ANSI.enabled?, do: ["--color"|args], else: ["--no-color"|args]
    
    IO.puts "==> Running tests with `MIX_ENV=#{env}`"
    {_, res} = System.cmd "mix", ["test"|args],
      into: IO.binstream(:stdio, :line),
      env: [{"MIX_ENV", to_string(env)}]
  
    if res > 0 do
      System.at_exit(fn _ -> exit({:shutdown, 1}) end)
    end
  end
end
  