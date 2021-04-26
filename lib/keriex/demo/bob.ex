defmodule Keriex.Demo.Bob do
  @local "127.0.0.1"

  def start_link do
    IO.puts ""
    IO.puts "Direct Mode demo of Bob"
    IO.puts "Named Bob on TCP port #{@local} to port #{5620}."
    IO.puts ""

    {:ok, conn} = Redix.start_link(host: @local, port: 6379)
    Redix.command(conn, ["HSET", "mykey", "baz"])
    Redix.command(conn, ["HSET", "mykey", "foo"])
    Redix.command(conn, ["HSET", "mykey", "bar"])

    {:ok, value} = Redix.command(conn, ["GET", "mykey"])

    IO.puts value

    keys = load_keys()
           |> Enum.each(&IO.inspect/1)

    keys
  end

  def load_keys do
    [
      "ArwXoACJgOleVZ2PY7kXn7rA0II0mHYDhc6WrBH8fDAc",
      "A6zz7M08-HQSFq92sJ8KJOT2cZ47x7pXFQLPB0pckB3Q",
      "AcwFTk-wgk3ZT2buPRIbK-zxgPx-TKbaegQvPEivN90Y",
      "Alntkt3u6dDgiQxTATr01dy8M72uuaZEf9eTdM-70Gk8",
      "A1-QxDkso9-MR1A8rZz_Naw6fgaAtayda8hrbkRVVu1E",
      "AKuYMe09COczwf2nIoD5AE119n7GLFOVFlNLxZcKuswc",
      "AxFfJTcSuEE11FINfXMqWttkZGnUZ8KaREhrnyAXTsjw",
      "ALq-w1UKkdrppwZzGTtz4PWYEeWm0-sDHzOv5sq96xJY"
    ]
  end
end
