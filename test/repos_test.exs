defmodule Travis.ReposTest do
  use ExUnit.Case

  test "#show" do
    %{"repo" => %{"slug" => "elixir-lang/elixir"}} = Travis.Repos.show("elixir-lang", "elixir")
  end

  test "#find" do
    %{"repos" => [%{"slug" => "elixir-lang/elixir"}]} =
      Travis.Repos.find(%Travis.Client{}, %{"slug" => "elixir-lang/elixir"})
  end
end
