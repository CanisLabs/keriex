defmodule Keriex.Derivation do
  defstruct code: "",
            raw: nil

  def as_prefix(%{code: c, raw: r}, d) do
    "#{c}#{r |> d.() |> Fast64.encode64() |> String.trim_trailing("=")}"
  end

  def as_prefix(%{code: c, raw: r}) do
    "#{c}#{r |> Fast64.encode64() |> String.trim_trailing("=")}"
  end
end
