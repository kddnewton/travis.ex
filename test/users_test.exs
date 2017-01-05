defmodule Travis.UsersTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"user" => %{"id" => _id}} = Travis.Users.list(@client)
  end

  test "#show" do
    %{"user" => %{"id" => 135884}} = Travis.Users.show(135884, @client)
  end
end
