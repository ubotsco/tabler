defmodule Tabler.MixProject do
  use Mix.Project

  def project do
    [
      app: :tabler,
      version: "1.37.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    []
  end
end
