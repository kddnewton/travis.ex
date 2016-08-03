defmodule Travis.RequestsTest do
  use ExUnit.Case

  test "#show" do
    %{"commit" => %{"branch" => "develop"}} = Travis.Requests.show(42461147)
  end

  test "#list" do
    %{"commits" => commits} = Travis.Requests.list(%Travis.Client{}, %{"slug": "elixir-lang/elixir"})
    assert is_list(commits)
  end
end
