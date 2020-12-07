defmodule Tabler.Icons do
  @url 'https://github.com/tabler/tabler-icons/archive/v1.37.0.tar.gz'

  Application.ensure_all_started(:inets)
  Application.ensure_all_started(:ssl)

  {:ok, {_, _, body}} = :httpc.request(:get, {@url, []}, [], [])
  tar = :zlib.gunzip(body)
  {:ok, files} = :erl_tar.extract({:binary, tar}, [:memory])

  for {path, data} <- files do
    case path |> to_string() |> String.split("/") do
      [_, "icons", icon] ->
        name = Path.basename(icon, ".svg")
        def svg(unquote(name)), do: unquote(String.trim(data))

      _ ->
        :skip
    end
  end
end
