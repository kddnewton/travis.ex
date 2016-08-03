defmodule Travis.Accounts do
  @moduledoc """
  https://docs.travis-ci.com/api#accounts
  A user might have access to multiple accounts. This is usually the account corresponding to the user directly and
  one account per GitHub organization.
  """

  import Travis
  alias Travis.Client

  @spec list(Client.t, list) :: Travis.response
  def list(client, params \\ []) do
    get "accounts", client, params
  end
end
