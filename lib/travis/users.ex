defmodule Travis.Users do
  @moduledoc """
  https://docs.travis-ci.com/api#users
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t) :: Travis.response
  def list(client) do
    get "users", client
  end

  @spec show(binary, Client.t) :: Travis.response
  def show(user, client) do
    get "users/#{user}", client
  end

  @spec sync(Client.t) :: Travis.response
  def sync(client) do
    post "users/sync", client
  end
end
