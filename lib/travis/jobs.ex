defmodule Travis.Jobs do
  @moduledoc """
  https://docs.travis-ci.com/api#jobs
  """

  import Travis
  alias Travis.Client

  @spec show(binary, Client.t, list) :: Travis.response
  def show(job, client \\ %Client{}, params \\ []) do
    get "jobs/#{job}", client, params
  end

  @spec cancel(binary, Client.t) :: Travis.response
  def cancel(job, client) do
    post "jobs/#{job}/cancel", client
  end

  @spec restart(binary, Client.t) :: Travis.response
  def restart(job, client) do
    post "jobs/#{job}/restart", client
  end

  @spec logs(binary, Client.t) :: Travis.response
  def logs(job, client \\ %Client{}) do
    get "jobs/#{job}/logs", client
  end
end
