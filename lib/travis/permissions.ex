defmodule Travis.Permissions do
  @moduledoc """
  https://docs.travis-ci.com/api#permissions
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t) :: Travis.response
  def list(client) do
    get "users/permissions", client
  end
end
