defmodule Travis.Mixfile do
  use Mix.Project

  @description """
    Simple Elixir wrapper for the Travis API
  """

  def project do
    [ app: :travis,
      version: "0.0.1",
      elixir: "~> 1.0",
      name: "Travis",
      description: @description,
      package: package,
      deps: deps ]
  end

  def application do
    [ applications: [ :httpoison, :exjsx ] ]
  end

  defp deps do
    [ {:httpoison, "~> 0.8"},
      {:exjsx, "~> 3.2"},
      {:dialyxir, "~> 0.3.5", only: [:dev]},
      {:ex_doc, ">= 0.0.0", only: [:dev]} ]
  end

  defp package do
    [ links: %{ "Github" => "https://github.com/localytics/travis.ex" },
      licenses: ["MIT"] ]
  end
end
