defmodule Travis.Repos do
  @moduledoc """
  https://docs.travis-ci.com/api#repositories
  """

  import Travis
  alias Travis.Client

  @spec show(binary, binary, Client.t, list) :: Travis.response
  def show(owner, repo, client \\ %Client{}, params \\ []) do
    get "repos/#{owner}/#{repo}", client, params
  end

  @spec find(Client.t, list) :: Travis.response
  def find(client \\ %Client{}, params \\ []) do
    get "repos", client, params
  end
end
