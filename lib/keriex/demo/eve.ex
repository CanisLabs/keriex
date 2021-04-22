defmodule Keriex.Demo.Eve do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [{127, 0, 0, 1}, 5621], [])
  end

  def init [ip, port] do
    {:ok, listen_socket} = :gen_tcp.listen(port, [:binary, {:packet, 0}, {:active, true}, {:ip, ip}])
    {:ok, socket} = :gen_tcp.accept listen_socket
    {:ok, %{ip: ip, port: port, socket: socket}}
  end

  def handle_info({:tcp, socket, packet}, state) do
    IO.inspect packet, label: "incoming packet"
    :gen_tcp.send socket, "right back at you \n"
    {:noreply, state}
  end

  def handle_info({:tcp_closed, _}, state) do
    IO.inspect "Socket has been closed}}"
    {:noreply, state}
  end

  def handle_info({:tcp_error, socket, reason}, state) do
    IO.inspect socket, label: "connection closed due to #{reason}"
    {:noreply, state}
  end

end