defmodule Travis.PermissionsTest do
  use ExUnit.Case

  @client Travis.Client.new(System.get_env("TRAVIS_TOKEN"))

  test "#list" do
    %{"admin" => admin, "pull" => pull, "push" => push} = Travis.Permissions.list(@client)
    assert is_list(admin)
    assert is_list(pull)
    assert is_list(push)
  end
end
