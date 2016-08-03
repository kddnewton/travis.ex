defmodule Travis.Hooks do
  @moduledoc """
  https://docs.travis-ci.com/api#hooks
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t) :: Travis.response
  def list(client) do
    get "hooks", client
  end

  @spec toggle(Client.t, list) :: Travis.response
  def toggle(client, params \\ []) do
    put "hooks", client, params
  end

  @spec toggle_hook(binary, Client.t, list) :: Travis.response
  def toggle_hook(hook, client, params \\ []) do
    put "hooks/#{hook}", client, params
  end
end
