# travis.ex

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
private repositories. Below are some examples

*Describe a repo*

```elixir
iex> Travis.Repos.show("elixir-lang", "elixir")
%{"repo" => %{"active" => true,
    "description" => "Elixir is a dynamic, functional language designed for building scalable and maintainable applications",
    "github_language" => nil, "id" => 8688, "last_build_duration" => nil,
    "last_build_finished_at" => nil, "last_build_id" => 149549230,
    "last_build_language" => nil, "last_build_number" => "11638",
    "last_build_started_at" => "2016-08-03T18:21:07Z",
    "last_build_state" => "started", "slug" => "elixir-lang/elixir"}}
```

*List builds for a repo*

```elixir
iex> Travis.Repos.Builds.list("elixir-lang", "elixir")
%{"builds" => [...]}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/localytics/travis.ex.
