defmodule Travis.Broadcasts do
  @moduledoc """
  https://docs.travis-ci.com/api#broadcasts
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t) :: Travis.response
  def list(client) do
    get "broadcasts", client
  end
end
