defmodule Travis.AccountsTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"accounts" => [%{"id" => _id}]} = Travis.Accounts.list(@client)
  end
end
