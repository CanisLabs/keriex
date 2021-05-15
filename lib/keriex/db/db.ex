defmodule Keriex.Db do
  @moduledoc false

  use GenServer

  # Client interface

  def put do
  end

  def get do
  end

  def del do
  end

  def init(init_arg) do
    {:ok, init_arg}
  end

end
