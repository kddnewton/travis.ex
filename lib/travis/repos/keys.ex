defmodule Travis.Repos.Keys do
  @moduledoc """
  https://docs.travis-ci.com/api#repository-keys
  """

  import Travis
  alias Travis.Client

  @spec show(binary, binary, Client.t) :: Travis.response
  def show(owner, repo, client \\ %Client{}) do
    get "repos/#{owner}/#{repo}/key", client
  end

  @spec generate(binary, binary, Client.t) :: Travis.response
  def generate(owner, repo, client) do
    post "repos/#{owner}/#{repo}/key", client
  end
end
