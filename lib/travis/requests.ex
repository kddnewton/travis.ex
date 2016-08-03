defmodule Travis.Requests do
  @moduledoc """
  https://docs.travis-ci.com/api#requests
  Requests can be used to see if and why a GitHub event has or has not triggered a new build.
  """

  import Travis
  alias Travis.Client

  @spec show(binary, Client.t) :: Travis.response
  def show(request, client \\ %Client{}) do
    get "requests/#{request}", client
  end

  @spec list(Client.t, list) :: Travis.response
  def list(client \\ %Client{}, params \\ []) do
    get "requests", client, params
  end
end
