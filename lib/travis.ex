defmodule Travis do
  alias Travis.Client

  @headers [{"User-Agent", "Travis.ex/0.0.1"}, {"Accept", "application/vnd.travis-ci.2+json"}]

  @type response :: {integer, String.t} | :jsx.json_term

  @spec delete(binary, Client.t) :: response
  def delete(path, client, params \\ []), do: :delete |> request(path, client, params)

  @spec get(binary, Client.t, list) :: response
  def get(path, client, params \\ []), do: :get |> request(path, client, params)

  @spec patch(binary, Client.t) :: response
  def patch(path, client, params \\ []), do: :patch |> request(path, client, params)

  @spec post(binary, Client.t) :: response
  def post(path, client, params \\ []), do: :post |> request(path, client, params)

  @spec put(binary, Client.t) :: response
  def put(path, client, params \\ []), do: :put |> request(path, client, params)

  @spec add_params(binary, list) :: binary
  defp add_params(url, params) do
    url |> URI.parse |> merge_params(params) |> String.Chars.to_string
  end

  @spec headers(Client.t) :: [{String.t, String.t}]
  defp headers(%Client{token: token}) when is_nil(token), do: @headers
  defp headers(%Client{token: token}), do: [{"Authorization", "token #{token}"} | @headers]

  @spec merge_params(URI.t, list) :: URI.t
  defp merge_params(uri, []), do: uri
  defp merge_params(%URI{query: nil} = uri, params) when is_list(params) or is_map(params) do
    uri |> Map.put(:query, URI.encode_query(params))
  end
  defp merge_params(%URI{} = uri, params) when is_list(params) or is_map(params) do
    uri |> Map.update!(:query, fn q -> q |> URI.decode_query |> Map.merge(param_map(params)) |> URI.encode_query end)
  end

  @spec request(:delete | :get | :patch | :post | :put, binary, Client.t, list) :: response
  defp request(method, path, client, params) do
    uri = client |> url(path) |> add_params(params)
    HTTPoison.request!(method, uri, "", client |> headers) |> process
  end

  @spec param_map(list) :: map
  defp param_map(list) when is_list(list) or is_map(list) do
    for {key, value} <- list, into: Map.new, do: {"#{key}", value}
  end

  @spec process(HTTPoison.Response.t) :: response
  defp process(%HTTPoison.Response{status_code: 200, body: body}), do: JSX.decode!(body)
  defp process(%HTTPoison.Response{status_code: status_code, body: body}), do: {status_code, body}

  @spec url(Client.t, binary) :: binary
  defp url(_client = %Client{endpoint: endpoint}, path) do
    endpoint <> path
  end
end
