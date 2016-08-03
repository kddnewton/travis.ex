defmodule Travis.Settings.SSHKey do
  @moduledoc """
  https://docs.travis-ci.com/api#settings:-ssh-key
  """

  import Travis
  alias Travis.Client

  @spec show(binary, Client.t, list) :: Travis.response
  def show(ssh_key, client, params) do
    get "settings/ssh_key/#{ssh_key}", client, params
  end

  @spec update(binary, Client.t, list) :: Travis.response
  def update(ssh_key, client, params) do
    patch "settings/ssh_key/#{ssh_key}", client, params
  end

  @spec delete_key(binary, Client.t) :: Travis.response
  def delete_key(ssh_key, client) do
    delete "settings/ssh_key/#{ssh_key}", client
  end
end
