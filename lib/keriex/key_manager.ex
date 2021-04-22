defmodule Keriex.KeyManager do
  @moduledoc false
  use GenServer

  def init(init_arg) do
    {:ok, init_arg}
  end

  def new() do
    :crypto.generate_key(:eddsa, :ed25519)
  end
end
