defmodule Travis.BroadcastsTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"broadcasts" => broadcasts} = Travis.Broadcasts.list(@client)
    assert is_list(broadcasts)
  end
end
