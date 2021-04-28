defmodule Keriex.Indentifier do
  @moduledoc false
  use GenServer

  def init(init_arg) do
    {:ok, init_arg}
  end
end
