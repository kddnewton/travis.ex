defmodule Travis.UsersTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"user" => %{"id" => 139354}} = Travis.Users.list(@client)
  end

  test "#show" do
    %{"user" => %{"id" => 139354}} = Travis.Users.show(139354, @client)
  end
end
