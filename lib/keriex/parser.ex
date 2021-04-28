defmodule Keriex.Parser do
  @moduledoc """

  """
  @name :parser

  use GenServer

  # Client Interface
  def start_link() do
    GenServer.start_link(__MODULE__, %{}, name: @name)
  end

  # Server Callbacks
  def init(init_arg) do
    {:ok, init_arg}
  end
end
