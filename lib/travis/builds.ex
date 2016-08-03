defmodule Travis.Builds do
  @moduledoc """
  https://docs.travis-ci.com/api#builds
  """

  import Travis
  alias Travis.Client

  @spec show(binary, Client.t) :: Travis.response
  def show(build, client \\ %Client{}) do
    get "builds/#{build}", client
  end

  @spec cancel(binary, Client.t) :: Travis.response
  def cancel(build, client) do
    post "builds/#{build}/cancel", client
  end

  @spec restart(binary, Client.t) :: Travis.response
  def restart(build, client) do
    post "builds/#{build}/restart", client
  end
end
