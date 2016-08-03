defmodule Travis.Repos.Branches do
  @moduledoc """
  https://docs.travis-ci.com/api#branches
  The branches API can be used to get information about the latest build on a given branch.
  """

  import Travis
  alias Travis.Client

  @spec list(binary, binary, Client.t, list) :: Travis.response
  def list(owner, repo, client \\ %Client{}, params \\ []) do
    get "repos/#{owner}/#{repo}/branches", client, params
  end

  @spec show(binary, binary, binary, Client.t, list) :: Travis.response
  def show(owner, repo, branch, client \\ %Client{}, params \\ []) do
    get "repos/#{owner}/#{repo}/branches/#{branch}", client, params
  end
end
