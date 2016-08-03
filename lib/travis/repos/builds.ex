defmodule Travis.Repos.Builds do
  @moduledoc """
  https://docs.travis-ci.com/api#builds
  """

  import Travis
  alias Travis.Client

  @spec list(binary, binary, Client.t, list) :: Travis.response
  def list(owner, repo, client \\ %Client{}, params \\ []) do
    get "repos/#{owner}/#{repo}/builds", client, params
  end

  @spec show(binary, binary, binary, Client.t) :: Travis.response
  def show(owner, repo, build, client \\ %Client{}) do
    get "repos/#{owner}/#{repo}/builds/#{build}", client
  end
end
