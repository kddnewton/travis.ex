defmodule Travis.Client do
  defstruct token: nil, endpoint: "https://api.travis-ci.org/"

  @type t :: %__MODULE__{token: binary, endpoint: binary}

  @spec new() :: t
  def new(), do: %__MODULE__{}

  @spec new(binary) :: t
  def new(token), do: %__MODULE__{token: token, endpoint: "https://api.travis-ci.com/"}
end
