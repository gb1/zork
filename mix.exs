defmodule Spork.MixProject do
  use Mix.Project

  def project do
    [
      app: :spork,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Spork, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1.2"},
      {:plug, "~> 1.5"},
      {:poison, "~> 3.1"},
      {:porcelain, "~> 2.0"},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false}
    ]
  end
end
