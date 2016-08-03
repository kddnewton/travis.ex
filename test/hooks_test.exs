defmodule Travis.HooksTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"hooks" => hooks} = Travis.Hooks.list(@client)
    assert is_list(hooks)
  end
end
