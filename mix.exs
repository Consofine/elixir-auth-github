defmodule ElixirAuthGithub.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_auth_github,
      version: "1.6.2",
      elixir: "~> 1.12",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        c: :test,
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "ElixirAuthGithub",
      source_url: "https://www.github.com/dwyl/elixir-auth-github",
      description: description(),
      package: package(),
      aliases: aliases()
    ]
  end

  defp aliases do
    [
      c: ["coveralls.html"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8.0"},
      {:jason, "~> 1.2"},

      # tracking test coverage
      {:excoveralls, "~> 0.14.4", only: [:test, :dev]},

      # documentation
      {:ex_doc, "~> 0.28.0", only: :dev}
    ]
  end

  defp description() do
    "The simplest way to add GitHub OAuth to your Elixir/Phoenix Apps!"
  end

  defp package() do
    [
      files: ~w(lib LICENSE mix.exs README.md .formatter.exs),
      links: %{"GitHub" => "https://github.com/dwyl/elixir-auth-github"},
      licenses: ["GNU GPL v2.0"],
      maintainers: ["dwyl & friends! (contributions always welcome)"]
    ]
  end
end
