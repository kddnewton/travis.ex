# travis.ex

[![Build Status](https://travis-ci.org/localytics/travis.ex.svg?branch=master)](https://travis-ci.org/localytics/travis.ex)
[![Hex.pm](https://img.shields.io/hexpm/v/travis.svg)](https://hex.pm/packages/travis)

Simple Elixir wrapper for the Travis API.

## Quickstart

First, add `travis` to your `mix.exs` dependencies:

```elixir
def deps do
  [{:travis, "~> 0.0.1"}]
end
```

Ensure that `travis` is added as an application in your `mix.exs`:

```elixir
def application do
  [applications: [:travis]]
end
```

Fetching dependencies and running on elixir console:

```elixir
mix deps.get
iex -S mix
```

## Examples

Every call to Travis needs a client. It can optionally have a travis token associated with it, which is necessary for
private repositories. If you don't provide one a client is created. Below are some examples:

*Describe a public repo*

```elixir
iex> Travis.Repos.show("elixir-lang", "elixir")
%{"repo" => %{...}}
```

*Describe a private repo*

```elixir
iex> client = Travis.Client.new(token)
%Travis.Client{endpoint: "https://api.travis-ci.com/",
 token: "..."}

iex> Travis.Repos.show("localytics", "travis.ex", client)
%{"repo" => %{...}}
```

*List builds for a repo*

```elixir
iex> Travis.Repos.Builds.list("elixir-lang", "elixir")
%{"builds" => [...]}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/localytics/travis.ex.
