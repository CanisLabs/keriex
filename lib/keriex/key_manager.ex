defmodule Keriex.KeyManager do
  @moduledoc false
  @name :key_manager

  use GenServer

  # Client Interface

  def start_link() do
    GenServer.start_link(__MODULE__, %{}, name: @name)
  end

  def new do
    GenServer.call(@name, :new)
  end

  # rotate

  # Server Callbacks

  def init(init_arg) do
    {:ok, init_arg}
  end

  def handle_call(:new, _from, _sstate) do
    {public, private} = :crypto.generate_key(:eddsa, :ed25519)

    {:reply, "Created keys", {public, private}}
  end
end
