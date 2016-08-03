defmodule Travis.Repos.Settings do
  @moduledoc """
  https://docs.travis-ci.com/api#settings:-general
  """

  import Travis
  alias Travis.Client

  @spec list(binary, binary, Client.t) :: Travis.response
  def list(owner, repo, client) do
    get "repos/#{owner}/#{repo}/settings", client
  end

  @spec update(binary, binary, Client.t, list) :: Travis.response
  def update(owner, repo, client, params \\ []) do
    patch "repos/#{owner}/#{repo}/settings", client, params
  end
end
