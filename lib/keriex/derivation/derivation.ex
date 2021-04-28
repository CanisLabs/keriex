defmodule Keriex.Derivation do
  @moduledoc false

  defstruct code: "",
            raw: nil

  def as_prefix(%{code: c, raw: r}, d) do
    "#{c}#{r |> d.() |> Base.url_encode64() |> String.trim_trailing("=")}"
  end

  def as_prefix(%{code: c, raw: r}) do
    "#{c}#{r |> Base.url_encode64() |> String.trim_trailing("=")}"
  end
end
