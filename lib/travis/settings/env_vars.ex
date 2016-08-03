defmodule Travis.Settings.EnvVars do
  @moduledoc """
  https://docs.travis-ci.com/api#settings:-environment-variables
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t, list) :: Travis.response
  def list(client, params) do
    get "settings/env_vars", client, params
  end

  @spec show(binary, Client.t, list) :: Travis.response
  def show(env_var, client, params) do
    get "settings/env_vars/#{env_var}", client, params
  end

  @spec add(Client.t, list) :: Travis.response
  def add(client, params) do
    post "settings/env_vars", client, params
  end

  @spec update(binary, Client.t, list) :: Travis.response
  def update(env_var, client, params) do
    patch "settings/env_vars/#{env_var}", client, params
  end

  @spec delete_var(binary, Client.t, list) :: Travis.response
  def delete_var(env_var, client, params) do
    delete "settings/env_vars/#{env_var}", client, params
  end
end
