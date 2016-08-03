defmodule Travis.ClientTest do
  use ExUnit.Case

  test "no auth" do
    client = Travis.Client.new
    assert client.endpoint == "https://api.travis-ci.org/"
  end

  test "with auth" do
    client = Travis.Client.new("foobar")
    assert client.endpoint == "https://api.travis-ci.com/"
    assert client.token == "foobar"
  end
end
