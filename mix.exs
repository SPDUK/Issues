defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.1.0",
      elixir: "~> 1.8",
      name: "Issues",
      source_url: "https://github.com/SPDUK/Issues",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:poison, "~> 3.1"},
      {:httpoison, "~> 1.5"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI]
  end
end
