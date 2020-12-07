defmodule Tabler do
  @doc """
  Get icon SVG content.

  ## Examples

  iex> "<svg" <> _ = Tabler.icon("2fa")
  """
  def icon(name), do: Tabler.Icons.svg(name)
end
