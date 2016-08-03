defmodule Travis.Repos.Caches do
  @moduledoc """
  https://docs.travis-ci.com/api#caches
  """

  import Travis
  alias Travis.Client

  @spec list(binary, binary, Client.t, list) :: Travis.response
  def list(owner, repo, client, params \\ []) do
    get "repos/#{owner}/#{repo}/caches", client, params
  end

  @spec delete_cache(binary, binary, Client.t) :: Travis.response
  def delete_cache(owner, repo, client, params \\ []) do
    delete "repos/#{owner}/#{repo}/caches", client, params
  end
end
